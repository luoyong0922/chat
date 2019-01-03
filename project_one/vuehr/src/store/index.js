import Vue from 'vue'
import Vuex from 'vuex'
import '../lib/sockjs'
import '../lib/stomp'
import { getRequest } from '../utils/api'

Vue.use(Vuex)

export default new Vuex.Store({
	state: {
		user: {
			name: window.localStorage.getItem('user' || '[]') == null ? '未登录' : JSON.parse(window.localStorage.getItem('user' || '[]')).name,
			userface: window.localStorage.getItem('user' || '[]') == null ? '' : JSON.parse(window.localStorage.getItem('user' || '[]')).userface,
			username: window.localStorage.getItem('user' || '[]') == null ? '' : JSON.parse(window.localStorage.getItem('user' || '[]')).username,
			roles: window.localStorage.getItem('user' || '[]') == null ? '' : JSON.parse(window.localStorage.getItem('user' || '[]')).roles
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
					console.log("33" + oldMsg.length)
					if(oldMsg.length == 0) {
						var rid = msg.receivid;
						var sid = context.state.currentFriend.id;
						getRequest("/chat/getAloneMsgs?rid=" + rid + "&sid=" + sid).then(resp => {

							if(resp && resp.status == 200) {
								context.state.msgList = resp.data;
								oldMsg = context.state.msgList;
								//更新msgList
								if(oldMsg == null) {
									context.commit('updateMsgList', []);
								} else {
									console.log("5" + JSON.stringify(oldMsg))
									context.commit('updateMsgList', oldMsg);
								}
							}
						});
					} else if(msg.sendUserName == context.state.currentFriend.username){
						oldMsg.push(msg);
						console.log("6" + JSON.stringify(oldMsg))
						context.commit('updateMsgList', oldMsg);
					}
					window.localStorage.setItem(context.state.user.username + "#" + msg.sendUserName, "messages")
					console.log("7" + context.state.currentFriend.username + "#" + msg.sendUserName);
					if(msg.sendUserName != context.state.currentFriend.username) {
						context.commit("addValue2DotMap", "isDot#" + context.state.user.username + "#" + msg.sendUserName);
					}

				});
				context.state.stomp.subscribe("/topic/nf", message => {
					context.commit('toggleNFDot', true);
				});
			}, failedMsg => {

			});
		}
	}
});