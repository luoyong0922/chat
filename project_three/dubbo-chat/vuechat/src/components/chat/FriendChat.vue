<template>
	<div>
		<el-container>
			<el-aside width="200px" id="friendListDiv">
				<el-tree :data="data" :props="defaultProps" accordion>
					<span class="custom-two-node" slot-scope="{ node, data }">
			            <span @click="toggleFriend(node)" v-bind:class="{currentChatFriend:currentFriend.fno==node.data.fno}">
			               <el-badge :is-dot="isDotMap.get('isDot#'+currentUser.qno+'#'+node.data.fno)!=null">{{ node.label }}</el-badge> 
			            </span>
					</span>
				</el-tree>
			</el-aside>
			<el-main style="padding-top: 0px;padding-bottom: 0px">
				<div class="chatDiv" ref="chatDiv" id="chatDiv">
					<p v-show="currentFriend.friendName">与
						<el-tag type="primary" size="small" style="margin-left: 5px;margin-right: 5px">{{currentFriend.friendName}}
						</el-tag>
						聊天中
					</p>
					<el-button :disabled="!currentFriend.fno" size="small" type="primary" class="sendBtn" @click="showAllMsgs"><i class="fa fa-send" style="margin-right: 15px"></i>查看历史消息
					</el-button>
					<template v-for="msg in msgList">
						<!--发送来的消息-->
						<div v-if="msg.sendUserName==currentFriend.friendName">
							<div class="sysTime">{{dateFormat(msg.sendTime)}}</div>

							<div style="display: flex;justify-content: flex-start;align-items: center;box-sizing: border-box;margin-top:5px;">

								<div style="display: inline-flex;text-align:left;border-style: solid;border-width: 1px;border-color: #20a0ff;border-radius: 5px;padding: 5px 8px 5px 8px;max-width:75%;">
									{{msg.message}}
								</div>
							</div>
						</div>
						<!--发出去的消息-->
						<div v-if="msg.sendUserName!=currentFriend.friendName">
							<div class="sysTime">{{dateFormat(msg.sendTime)}}</div>
							<div style="display: flex;justify-content: flex-end;align-items: center;box-sizing: border-box;margin-top:5px;">
								<div style="display: inline-flex;text-align:left;border-style: solid;border-width: 1px;border-color: #20a0ff;border-radius: 10px;padding: 5px 8px 5px 8px;margin-right: 3px;background-color: rgb(192, 272, 207);max-width:75%;">
									{{msg.message}}
								</div>
							</div>
						</div>
					</template>
				</div>
				<div style="text-align: left;margin-top: 10px">
					<el-input v-model="msg" placeholder="请输入内容" size="mini" style="width: 600px;" type="textarea" autosize></el-input>
					<el-button :disabled="!currentFriend.fno" size="small" type="primary" class="sendBtn" @click="sendMsg"><i class="fa fa-send" style="margin-right: 15px"></i>发送
					</el-button>
				</div>
			</el-main>
		</el-container>
	</div>
</template>
<style>
	.el-tree-node__content {
		width: 200px;
	}
	.el-badge {
		width: 150px;
		text-align: left;
	}
</style>
<script>
	export default {
		data() {
			return {
				data: [{
					qno: 1,
					label: '我的好友',
					icon: 'el-icon-success',
					children: [{
						qno: 4,
						label: '二级 1-1',
						children: [{
							qno: 9,
							label: '三级 1-1-1',
							icon: 'el-icon-info'
						}, {
							qno: 10,
							label: '三级 1-1-2'
						}]
					}]
				}],
				defaultProps: {
					children: 'lists',
					label: 'friendName',
					icon: 'el-icon-success',
					qno: 'qno'
				},
				msg: '',
				currentUser: this.$store.state.user,
				currentFriend: {},
				msglist: this.$store.state.msgList,
			};
		},
		computed: {
			msgList: {
				get: function() {
					console.log("getMsgList-----------"+this.msglist)
					if(this.msglist == null) {
						var rid = this.currentUser.qno;
						var sid = this.currentFriend.fno;
						this.getRequest("/chato2o/getAloneMsgs?rid=" + rid + "&sid=" + sid).then(resp => {

							if(resp && resp.status == 200) {
								this.$store.state.msgList = resp.data;
								this.msglist = resp.data;
							}
						});
					}
					return this.msglist;
				}
			},
			isDotMap: {
				get: function() {
					console.log(this.$store.state.isDotMap);
					return this.$store.state.isDotMap;
				}
			}
		},
		watch: {
//			msgList() {
//				document.getElementById('chatDiv').scrollTop = document.getElementById('chatDiv').scrollHeight;
//			}
		},
		methods: {
			handleNodeClick(data) {
				console.log(data);
			},
			showAllMsgs() {
				var rid = this.currentUser.qno;
				var sid = this.currentFriend.fno;
				this.getRequest("/chato2o/getAloneMsgs?rid=" + rid + "&sid=" + sid + "&size=" + 200).then(resp => {

					if(resp && resp.status == 200) {
						this.$store.state.msgList = resp.data;
						this.msglist = resp.data;
					}
				});

			},
			sendMsg() {

				this.postRequest("/chato2o/sendAloneMsg", {
					sendQno: this.$store.state.user.qno,
					receiveQno: this.currentFriend.fno,
					message: this.msg
				}).then(resp => {

					if(resp && resp.status == 200) {
						var data = resp.data;
						if(data != null) {
							this.msglist.push({
								message: this.msg,
								sendTime: this.dateFormat(null),
								sendUserName: this.currentUser.name
							});
							window.localStorage.setItem(this.$store.state.user.qno + "#" + this.currentFriend.fno, "messages")
							this.$store.state.stomp.send("/ws/chat", {}, this.$store.state.user.qno + ";" + this.msg + ";" + this.currentFriend.fno);
							this.msg = '';
							this.updateChatDiv();
						}
					}
				})

			},
			updateChatDiv() {

				var oldMsg = this.msglist;
				if(oldMsg == null) {
					this.$store.commit('updateMsgList', [])
				} else {

					this.$store.commit('updateMsgList', oldMsg)
				}
			},
			toggleFriend(data) {
				if(data.childNodes.length > 0) { //点击好友分组时不变更信息
					return;
				}
				var data = data.data;
				this.msglist = null;
				//切换数据
				if(data == this.currentFriend) {
					return;
				}
				this.currentFriend = data;
				this.$store.commit('updateCurrentFriend', data);
				this.updateChatDiv();
				this.$store.commit("removeValueDotMap", "isDot#" + this.currentUser.qno + "#" + data.fno);
				document.getElementById('chatDiv').scrollTop = document.getElementById('chatDiv').scrollHeight;
			},
			loadFriends() {
				var _this = this;
				this.getRequest("/friend/getFriend/" + this.currentUser.qno).then(resp => {
					if(resp.data.status == 200) {
						_this.data = resp.data.obj;
					}
				})
			},
			//时间格式化函数，此处仅针对yyyy-MM-dd hh:mm:ss 的格式进行格式化
			dateFormat(time) {
				if(time == null) {
					time = new Date();
				}
				var date = new Date(time);
				var year = date.getFullYear();
				/* 在日期格式中，月份是从0开始的，因此要加1
				 * 使用三元表达式在小于10的前面加0，以达到格式统一  如 09:11:05
				 * */
				var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
				var day = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
				var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
				var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
				var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
				// 拼接
				return year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
			}

		},
		mounted: function() {
			this.loadFriends();
		}
	};
</script>