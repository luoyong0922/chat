import Vue from 'vue'
import Vuex from 'vuex'
import '../lib/sockjs'
import '../lib/stomp'
import { getRequest } from '../utils/api'

Vue.use(Vuex)

export default new Vuex.Store({
	state: {
		user: {
			name: window.localStorage.getItem('user' || '[]') == null ? '未登录' : JSON.parse(window.localStorage.getItem('user' || '[]')).nickName,
			qno: window.localStorage.getItem('user' || '[]') == null ? '' : JSON.parse(window.localStorage.getItem('user' || '[]')).qno,
			username: window.localStorage.getItem('user' || '[]') == null ? '未登录' : JSON.parse(window.localStorage.getItem('user' || '[]')).nickName
		},
		routes: [],
		msgList: [],
		isDotMap: new Map(),
		currentFriend: {},
		stomp: Stomp.over(new SockJS("/ws/endpointChat")),
		nfDot: false
	},
	mutations: {
		initMenu(state, menus) {
			state.routes = menus;
		},
		login(state, user) {
			state.user = user;
			window.localStorage.setItem('user', JSON.stringify(user));
		},
		logout(state) {
			window.localStorage.removeItem('user');
			state.routes = [];
		},
		toggleNFDot(state, newValue) {
			state.nfDot = newValue;
		},
		updateMsgList(state, newMsgList) {
			state.msgList = newMsgList;
		},
		updateCurrentFriend(state, newFriend) {
			state.currentFriend = newFriend;
		},
		addValue2DotMap(state, key) {
			state.isDotMap.set(key, "您有未读消息")
		},
		removeValueDotMap(state, key) {
			state.isDotMap.delete(key);
		}
	},
	actions: {
		connect(context) {
			context.state.stomp = Stomp.over(new SockJS("/ws/endpointChat"));
			context.state.stomp.connect({}, frame => {
				context.state.stomp.subscribe("/user/queue/chat", message => {
					
					var msg = JSON.parse(message.body);

					var oldMsg = context.state.msgList;
					
					if(msg.sendUserName != context.state.currentFriend.friendName) {
						console.log("addDotMap");
						context.commit("addValue2DotMap", "isDot#" + context.state.user.qno + "#" + msg.sendQno);
					}
					if(oldMsg.length == 0) {
						var rid = msg.receiveQno;
						var sid = msg.sendQno;
						getRequest("/chato2o/getAloneMsgs?rid=" + rid + "&sid=" + sid).then(resp => {

							if(resp && resp.status == 200) {
								context.state.msgList = resp.data;
								oldMsg = context.state.msgList;
								//更新msgList
								if(oldMsg == null) {
									context.commit('updateMsgList', []);
								} else {
									context.commit('updateMsgList', oldMsg);
								}
							}
						});
					} else if(oldMsg.length > 0 && msg.sendUserName == context.state.currentFriend.friendName){
						oldMsg.push(msg);
						context.commit('updateMsgList', oldMsg);
					}
					window.localStorage.setItem(context.state.user.name + "#" + msg.sendUserName, "messages")
					console.log(context.state.user.name + "#" + msg.sendUserName+"#"+context.state.currentFriend.friendName);
				});
				context.state.stomp.subscribe("/topic/nf", message => {
					context.commit('toggleNFDot', true);
				});
			}, failedMsg => {
			});
		}
	}
});