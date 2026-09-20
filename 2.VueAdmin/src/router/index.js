	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import cheweixinxi from '@/views/cheweixinxi/list'
	import shuakaruchang from '@/views/shuakaruchang/list'
	import yonghu from '@/views/yonghu/list'
	import cheliangxinxi from '@/views/cheliangxinxi/list'
	import users from '@/views/users/list'
	import cheliangleixing from '@/views/cheliangleixing/list'
	import shuakalichang from '@/views/shuakalichang/list'
	import yonghuRegister from '@/views/yonghu/register'
	import yonghuCenter from '@/views/yonghu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghuCenter',
			name: '用户个人中心',
			component: yonghuCenter
		}
		,{
			path: '/cheweixinxi',
			name: '车位信息',
			component: cheweixinxi
		}
		,{
			path: '/shuakaruchang',
			name: '刷卡入场',
			component: shuakaruchang
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/cheliangxinxi',
			name: '车辆信息',
			component: cheliangxinxi
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/cheliangleixing',
			name: '车辆类型',
			component: cheliangleixing
		}
		,{
			path: '/shuakalichang',
			name: '刷卡离场',
			component: shuakalichang
		}
		]
	},
	{
		path: '/yonghuRegister',
		name: '用户注册',
		component: yonghuRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
