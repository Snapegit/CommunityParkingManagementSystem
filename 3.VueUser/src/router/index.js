import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import cheliangxinxiList from '@/views/pages/cheliangxinxi/list'
import cheliangxinxiDetail from '@/views/pages/cheliangxinxi/formModel'
import cheliangxinxiAdd from '@/views/pages/cheliangxinxi/formAdd'
import cheweixinxiList from '@/views/pages/cheweixinxi/list'
import cheweixinxiDetail from '@/views/pages/cheweixinxi/formModel'
import cheweixinxiAdd from '@/views/pages/cheweixinxi/formAdd'
import cheliangleixingList from '@/views/pages/cheliangleixing/list'
import cheliangleixingDetail from '@/views/pages/cheliangleixing/formModel'
import cheliangleixingAdd from '@/views/pages/cheliangleixing/formAdd'
import shuakaruchangList from '@/views/pages/shuakaruchang/list'
import shuakaruchangDetail from '@/views/pages/shuakaruchang/formModel'
import shuakaruchangAdd from '@/views/pages/shuakaruchang/formAdd'
import shuakalichangList from '@/views/pages/shuakalichang/list'
import shuakalichangDetail from '@/views/pages/shuakalichang/formModel'
import shuakalichangAdd from '@/views/pages/shuakalichang/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'cheliangxinxiList',
			component: cheliangxinxiList
		}, {
			path: 'cheliangxinxiDetail',
			component: cheliangxinxiDetail
		}, {
			path: 'cheliangxinxiAdd',
			component: cheliangxinxiAdd
		}
		, {
			path: 'cheweixinxiList',
			component: cheweixinxiList
		}, {
			path: 'cheweixinxiDetail',
			component: cheweixinxiDetail
		}, {
			path: 'cheweixinxiAdd',
			component: cheweixinxiAdd
		}
		, {
			path: 'cheliangleixingList',
			component: cheliangleixingList
		}, {
			path: 'cheliangleixingDetail',
			component: cheliangleixingDetail
		}, {
			path: 'cheliangleixingAdd',
			component: cheliangleixingAdd
		}
		, {
			path: 'shuakaruchangList',
			component: shuakaruchangList
		}, {
			path: 'shuakaruchangDetail',
			component: shuakaruchangDetail
		}, {
			path: 'shuakaruchangAdd',
			component: shuakaruchangAdd
		}
		, {
			path: 'shuakalichangList',
			component: shuakalichangList
		}, {
			path: 'shuakalichangDetail',
			component: shuakalichangDetail
		}, {
			path: 'shuakalichangAdd',
			component: shuakalichangAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
