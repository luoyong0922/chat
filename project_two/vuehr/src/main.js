// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import store from './store'
import { getRequest } from './utils/api'
import { postRequest } from './utils/api'
import { deleteRequest } from './utils/api'
import { putRequest } from './utils/api'
import { initMenu } from './utils/utils'
import { isNotNullORBlank } from './utils/utils'
import './utils/filter_utils'
import 'font-awesome/css/font-awesome.min.css'
import 'babel-polyfill' //polyfill指的是“用于实现浏览器不支持原生功能的代码”，

Vue.config.productionTip = false
Vue.use(ElementUI)

Vue.prototype.getRequest = getRequest;
Vue.prototype.postRequest = postRequest;
Vue.prototype.deleteRequest = deleteRequest;
Vue.prototype.putRequest = putRequest;
Vue.prototype.isNotNullORBlank = isNotNullORBlank;

router.beforeEach((to, from, next) => {
	if(to.name == 'Login') {
		next();
		return;
	}
	var name = store.state.user.name;
	if(name == '未登录') {
		if(to.meta.requireAuth || to.name == null) {
			next({
				path: '/',
				query: {
					redirect: to.path
				}
			})
		} else {
			next();
		}
	} else {
		if(store.state.user.status != 'online') {
			console.log(store.state.user)
			//建立websocket connect
			initMenu(router, store);
			store.state.user.status = 'online';
		}
		if(to.path == '/chat')

			store.commit("updateMsgList", []);
		next();
	}
})

new Vue({
	el: '#app',
	router,
	store,
	template: '<App/>',
	components: {
		App
	}
})