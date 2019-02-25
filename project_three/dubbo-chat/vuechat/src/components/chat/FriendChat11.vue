<template>
	<div>
		<el-container>
			<el-aside width="160px">
				<div class="friendListDiv" id="friendListDiv" v-for="(hr,index) in hrs" :key="hr.id" @click="toggleFriend(hr)" v-bind:class="{currentChatFriend:currentFriend.id==hr.id}">
					<img :src="hr.userface" class="userfaceImg" />
					<el-badge :is-dot="isDotMap.get('isDot#'+currentUser.username+'#'+hr.username)!=null">{{hr.name}}</el-badge>
				</div>
				<div style="background-color: #20a0ff;height: 1px;width: 160px;" />
			</el-aside>
			<el-main style="padding-top: 0px;padding-bottom: 0px">
				<div class="chatDiv" ref="chatDiv" id="chatDiv">
					<p v-show="currentFriend.name">与
						<el-tag type="primary" size="small" style="margin-left: 5px;margin-right: 5px">{{currentFriend.name}}
						</el-tag>
						聊天中
					</p>
					<el-button :disabled="!currentFriend.id" size="small" type="primary" class="sendBtn" @click="showAllMsgs"><i class="fa fa-send" style="margin-right: 15px"></i>查看历史消息
					</el-button>
					<template v-for="msg in msgList">
						<!--发送来的消息-->
						<div v-if="msg.sendUserName==currentFriend.username">
							<div class="sysTime">{{dateFormat(msg.sendtime)}}</div>

							<div style="display: flex;justify-content: flex-start;align-items: center;box-sizing: border-box;margin-top:5px;">

								<img :src="currentFriend.userface" class="userfaceImg">
								<div style="display: inline-flex;text-align:left;border-style: solid;border-width: 1px;border-color: #20a0ff;border-radius: 5px;padding: 5px 8px 5px 8px;max-width:75%;">
									{{msg.message}}
								</div>
							</div>
						</div>
						<!--发出去的消息-->
						<div v-if="msg.sendUserName!=currentFriend.username">
							<div class="sysTime">{{dateFormat(msg.sendtime)}}</div>
							<div style="display: flex;justify-content: flex-end;align-items: center;box-sizing: border-box;margin-top:5px;">
								<div style="display: inline-flex;text-align:left;border-style: solid;border-width: 1px;border-color: #20a0ff;border-radius: 10px;padding: 5px 8px 5px 8px;margin-right: 3px;background-color: rgb(192, 272, 207);max-width:75%;">
									{{msg.message}}
								</div>
								<img :src="currentUser.userface" class="userfaceImg">
							</div>
						</div>
					</template>
				</div>
				<div style="text-align: left;margin-top: 10px">
					<el-input v-model="msg" placeholder="请输入内容" size="mini" style="width: 600px;" type="textarea" autosize></el-input>
					<el-button :disabled="!currentFriend.id" size="small" type="primary" class="sendBtn" @click="sendMsg"><i class="fa fa-send" style="margin-right: 15px"></i>发送
					</el-button>
				</div>
			</el-main>
		</el-container>
	</div>
</template>
<script>
	export default {
		data() {
			return {
				hrs: [],
				msg: '',
				currentUser: this.$store.state.user,
				currentFriend: {},
				msglist: this.$store.state.msgList
			}
		},
		computed: {
			msgList: {
				get: function() {

					if(this.msglist == null) {
						var rid = this.currentUser.id;
						var sid = this.currentFriend.id;
						this.getRequest("/chat/getAloneMsgs?rid=" + rid + "&sid=" + sid).then(resp => {

							if(resp && resp.status == 200) {
								this.$store.state.msgList = resp.data;
								this.msglist = resp.data;
							} 
						});
					}
					console.log("msglist:" + JSON.stringify(this.msglist))
					return this.msglist;
				}
			},
			isDotMap: {
				get: function() {
					console.log(this.$store.state.isDotMap)
					 return this.$store.state.isDotMap
				}
			}
		},
		watch: {
			msgList() {
				console.log(this.$store.state.isDotMap)
				document.getElementById('chatDiv').scrollTop = document.getElementById('chatDiv').scrollHeight;
			},
			isDotMap(){
				document.getElementById('friendListDiv').scrollTop = document.getElementById('friendListDiv').scrollHeight;
			}
		},
		methods: {
			showAllMsgs(){
				var rid = this.currentUser.id;
						var sid = this.currentFriend.id;
						this.getRequest("/chat/getAloneMsgs?rid=" + rid + "&sid=" + sid + "&size=" + 200).then(resp => {

							if(resp && resp.status == 200) {
								this.$store.state.msgList = resp.data;
								this.msglist = resp.data;
							}
						});
					console.log("allmsglist:" + JSON.stringify(this.msglist))
			
			},
			sendMsg() {

				this.postRequest("/chat/alone", {
					sendid: this.$store.state.user.id,
					receivid: this.currentFriend.id,
					message: this.msg
				}).then(resp => {

					if(resp && resp.status == 200) {
						var data = resp.data;
						console.log("data"+JSON.stringify(data))
						if(data != null) {
							this.msglist.push({
								message: this.msg,
								sendtime: this.dateFormat(null),
								sendUserName: this.$store.state.user.username
							});
							window.localStorage.setItem(this.$store.state.user.username + "#" + this.currentFriend.username,"messages")
							console.log("newMsglist"+JSON.stringify(this.msglist))
							this.$store.state.stomp.send("/ws/chat", {}, this.currentFriend.username + ";" + this.msg + ";" + this.currentFriend.id);
							this.msg = '';
							this.updateChatDiv();
						}
					}
				})

			},
			updateChatDiv() {
	
				var oldMsg = this.msglist;
				console.log("666:updateMsgList" + JSON.stringify(oldMsg))
				if(oldMsg == null) {
					this.$store.commit('updateMsgList', [])
				} else {
					
					this.$store.commit('updateMsgList', oldMsg)
				}
			},
			toggleFriend(hr) {
				this.msglist = null;
				//切换数据
				if(hr == this.currentFriend) {
					return;
				}
				this.currentFriend = hr;
				this.$store.commit('updateCurrentFriend', hr);
				this.updateChatDiv();
				this.$store.commit("removeValueDotMap", "isDot#" + this.currentUser.username + "#" + hr.username);
				console.log("8"+this.currentUser.username + "#" + hr.username);
				document.getElementById('chatDiv').scrollTop = document.getElementById('chatDiv').scrollHeight;
			},
			loadHrs() {
				var _this = this;
				this.getRequest("/chat/hrs").then(resp => {
					_this.hrs = resp.data;
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
			this.loadHrs();
		}
	}
</script>
<style>
	.userfaceImg {
		width: 37px;
		height: 37px;
		border-radius: 30px;
		margin-right: 10px;
	}
	
	.friendListDiv {
		display: flex;
		justify-content: flex-start;
		padding-left: 20px;
		box-sizing: border-box;
		align-items: center;
		width: 160px;
		height: 40px;
		border-color: #20a0ff;
		border-left-style: solid;
		border-top-style: solid;
		border-right-style: solid;
		border-width: 1px;
		cursor: pointer
	}
	
	.chatDiv {
		border-color: #20a0ff;
		border-style: solid;
		border-radius: 5px;
		border-width: 1px;
		box-sizing: border-box;
		width: 700px;
		height: 450px;
		overflow-y: auto;
		padding-bottom: 50px;
	}
	/*
	.chatBubble {
    height: 30px;
    line-height: 30px;
    background-color: rgb(198, 205, 243);
    font-size: 16px;
    color: rgb(58, 58, 58);
    border-radius: 10px;
    padding-left: 10px;
    padding-right: 10px;
}
	.self .triangle {
    position: absolute;
    right: -10px;
    top: 10px;
    border-left: 10px solid rgb(198, 205, 243);
    border-bottom: 10px solid transparent;
    }
	*/
	
	.sysTime {
		display: inline-block;
		height: 23px;
		margin-top: 10px;
		padding-left: 10px;
		padding-right: 10px;
		border-radius: 3px;
		color: #999;
		text-align: center;
		line-height: 23px;
		background-color: rgb(209, 209, 209);
		font-size: 16px;
		box-sizing: border-box;
	}
	
	.sendBtn {
		padding-left: 25px;
		padding-right: 25px
	}
	
	.currentChatFriend {
		background-color: #dcdfe6;
	}
</style>