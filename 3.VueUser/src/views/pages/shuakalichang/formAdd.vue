
<template>
	<div class="app-contain" :style='{"minHeight":"100vh","padding":"0 18%","margin":"20px auto 60px","color":"#666","background":"#fff","width":"100%","fontSize":"14px","position":"relative","height":"100%"}'>
		<div class="bread_view">
			<el-breadcrumb separator="/" class="breadcrumb">
				<el-breadcrumb-item class="first_breadcrumb" :to="{ path: '/' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item class="second_breadcrumb" v-for="(item,index) in breadList" :key="index">{{item.name}}</el-breadcrumb-item>
			</el-breadcrumb>
		</div>
		<el-form ref="formRef" :model="form" class="add_form" label-width="120px" :rules="rules">
			<el-row>
				<el-col :span="24">
					<el-form-item label="车位号" prop="cheweihao">
						<el-input class="list_inp" v-model="form.cheweihao" placeholder="车位号"
							 type="text" 							:readonly="!isAdd||disabledForm.cheweihao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="场地名称" prop="changdimingcheng">
						<el-input class="list_inp" v-model="form.changdimingcheng" placeholder="场地名称"
							 type="text" 							:readonly="!isAdd||disabledForm.changdimingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="车牌号码" prop="chepaihaoma">
						<el-input class="list_inp" v-model="form.chepaihaoma" placeholder="车牌号码"
							 type="text" 							:readonly="!isAdd||disabledForm.chepaihaoma?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="车辆名称" prop="cheliangmingcheng">
						<el-input class="list_inp" v-model="form.cheliangmingcheng" placeholder="车辆名称"
							 type="text" 							:readonly="!isAdd||disabledForm.cheliangmingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="入场时间" prop="ruchangshijian">
						<el-date-picker
							class="list_date"
							v-model="form.ruchangshijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.ruchangshijian?true:false"
							placeholder="请选择入场时间" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="出场时间" prop="chuchangshijian">
						<el-date-picker
							class="list_date"
							v-model="form.chuchangshijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.chuchangshijian?true:false"
							placeholder="请选择出场时间" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="计费时长" prop="jifeishizhang">
						<el-input class="list_inp" v-model="jifeishizhang" placeholder="计费时长" readonly></el-input>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="价格/小时" prop="xiaoshijiage">
						<el-input class="list_inp" v-model.number="form.xiaoshijiage" placeholder="价格/小时"
							 type="number" 							:readonly="!isAdd||disabledForm.xiaoshijiage?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="收费金额" prop="shoufeijine">
						<el-input class="list_inp" v-model="shoufeijine" placeholder="收费金额" readonly></el-input>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="用户账号" prop="yonghuzhanghao">
						<el-input class="list_inp" v-model="form.yonghuzhanghao" placeholder="用户账号"
							 type="text" 							:readonly="!isAdd||disabledForm.yonghuzhanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="用户姓名" prop="yonghuxingming">
						<el-input class="list_inp" v-model="form.yonghuxingming" placeholder="用户姓名"
							 type="text" 							:readonly="!isAdd||disabledForm.yonghuxingming?true:false" />
					</el-form-item>
				</el-col>

			</el-row>
			<div class="formModel_btn_box">
				<el-button class="formModel_cancel" @click="backClick">取消</el-button>
				<el-button class="formModel_confirm" @click="save"
					type="success"
					>
					保存
				</el-button>
			</div>
		</el-form>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		watch,
		onUnmounted,
		onMounted,
		nextTick,
		computed
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const route = useRoute()
	const router = useRouter()
	//基础信息
	const tableName = 'shuakalichang'
	const formName = '刷卡离场'
	//基础信息
	const breadList = ref([{
		name: formName
	}])
	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//form表单
	const form = ref({
		cheweihao: '',
		changdimingcheng: '',
		chepaihaoma: '',
		cheliangmingcheng: '',
		ruchangshijian: '',
		chuchangshijian: '',
		jifeishizhang: '',
		xiaoshijiage: '',
		shoufeijine: '',
		yonghuzhanghao: '',
		yonghuxingming: '',
		ispay: '未支付',
		crossuserid: '',
		crossrefid: '',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		cheweihao : false,
		changdimingcheng : false,
		chepaihaoma : false,
		cheliangmingcheng : false,
		ruchangshijian : false,
		chuchangshijian : false,
		jifeishizhang : false,
		xiaoshijiage : false,
		shoufeijine : false,
		yonghuzhanghao : false,
		yonghuxingming : false,
		ispay : false,
		crossuserid : false,
		crossrefid : false,
	})
	const isAdd = ref(false)
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		cheweihao: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		changdimingcheng: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		chepaihaoma: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		cheliangmingcheng: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		ruchangshijian: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		chuchangshijian: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		jifeishizhang: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: validateNumber, trigger: 'blur' },
		],
		xiaoshijiage: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: validateNumber, trigger: 'blur' },
		],
		shoufeijine: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: validateNumber, trigger: 'blur' },
		],
		yonghuzhanghao: [
		],
		yonghuxingming: [
		],
		ispay: [
		],
		crossuserid: [
		],
		crossrefid: [
		],
	})
	const jifeishizhang =computed(()=>{
		let d = form.value
		let a = 'h.ruchangshijian-h.chuchangshijian'
		let n = a.split('-')
		let hour = getHour(d[n[0].split('h.')[1]], d[n[1].split('h.')[1]])
		form.value.jifeishizhang = hour
		return hour
	})
	const shoufeijine =computed(()=>{
		let c = form.value
		let a = c.jifeishizhang*c.xiaoshijiage
		form.value.shoufeijine = a?a.toFixed(2):0
		return a?a.toFixed(2):0
	})
	//methods

	// 获取时间间隔 单位小时
	const getHour = (first, last) => {
		let date1 = new Date(first)
		let date2 = new Date(last)
		let a = date1.getTime();
		let b = date2.getTime();
		var count = 0;
		for (var i = a; i < b; i += 3600 * 1000) {
			count++;
		}
		return count;
	}
	//methods
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init = (formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null) => {
			form.value.ruchangshijian = context?.$toolUtil.getCurDateTime()
			form.value.chuchangshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			// getInfo()
			for(let x in row){
				if(x=='cheweihao'){
					form.value.cheweihao = row[x];
					disabledForm.value.cheweihao = true;
					continue;
				}
				if(x=='changdimingcheng'){
					form.value.changdimingcheng = row[x];
					disabledForm.value.changdimingcheng = true;
					continue;
				}
				if(x=='chepaihaoma'){
					form.value.chepaihaoma = row[x];
					disabledForm.value.chepaihaoma = true;
					continue;
				}
				if(x=='cheliangmingcheng'){
					form.value.cheliangmingcheng = row[x];
					disabledForm.value.cheliangmingcheng = true;
					continue;
				}
				if(x=='ruchangshijian'){
					form.value.ruchangshijian = row[x];
					disabledForm.value.ruchangshijian = true;
					continue;
				}
				if(x=='chuchangshijian'){
					form.value.chuchangshijian = row[x];
					disabledForm.value.chuchangshijian = true;
					continue;
				}
				if(x=='jifeishizhang'){
					form.value.jifeishizhang = row[x];
					disabledForm.value.jifeishizhang = true;
					continue;
				}
				if(x=='xiaoshijiage'){
					form.value.xiaoshijiage = row[x];
					disabledForm.value.xiaoshijiage = true;
					continue;
				}
				if(x=='shoufeijine'){
					form.value.shoufeijine = row[x];
					disabledForm.value.shoufeijine = true;
					continue;
				}
				if(x=='yonghuzhanghao'){
					form.value.yonghuzhanghao = row[x];
					disabledForm.value.yonghuzhanghao = true;
					continue;
				}
				if(x=='yonghuxingming'){
					form.value.yonghuxingming = row[x];
					disabledForm.value.yonghuxingming = true;
					continue;
				}
				if(x=='crossuserid'){
					form.value.crossuserid = row[x];
					disabledForm.value.crossuserid = true;
					continue;
				}
				if(x=='crossrefid'){
					form.value.crossrefid = row[x];
					disabledForm.value.crossrefid = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.ispay='未支付'
		}
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(context?.$toolUtil.storageGet("frontRole")!="管理员") {
				disabledForm.value.ruchangshijian = true;
			}
			if(context?.$toolUtil.storageGet("frontRole")!="管理员") {
				disabledForm.value.jifeishizhang = true;
			}
			if(context?.$toolUtil.storageGet("frontRole")!="管理员") {
				disabledForm.value.xiaoshijiage = true;
			}
			if(json.hasOwnProperty('yonghuzhanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.yonghuzhanghao = json.yonghuzhanghao
				disabledForm.value.yonghuzhanghao = true;
			}
			if(json.hasOwnProperty('yonghuxingming') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.yonghuxingming = json.yonghuxingming
				disabledForm.value.yonghuxingming = true;
			}
		})
	}
	//初始化
	//取消
	const backClick = () => {
		history.back()
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									history.back()
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							history.back()
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
	onMounted(()=>{
		type.value = route.query.type?route.query.type:'add'
		let row = null
		let table = null
		let statusColumnName = null
		let tips = null
		let statusColumnValue = null
		if(type.value == 'cross'){
			row = context?.$toolUtil.storageGet('crossObj')?JSON.parse(context?.$toolUtil.storageGet('crossObj')):{}
			table = context?.$toolUtil.storageGet('crossTable')
			statusColumnName = context?.$toolUtil.storageGet('crossStatusColumnName')
			tips = context?.$toolUtil.storageGet('crossTips')
			statusColumnValue = context?.$toolUtil.storageGet('crossStatusColumnValue')
		}
		init(route.query.id?route.query.id:null, type.value,'', row, table, statusColumnName, tips, statusColumnValue)
	})
	
</script>
<style lang="scss" scoped>
	// 面包屑盒子
	.bread_view {
		border: 1px solid #ddd;
		border-radius: 0px;
		padding: 12px 20px;
		margin: 10px auto 10px;
		background: #f9f9f9;
		width: 100%;
		position: relative;
		:deep(.breadcrumb) {
			font-size: 14px;
			line-height: 1;
			.el-breadcrumb__separator {
				margin: 0 9px;
				color: #ccc;
				font-weight: 500;
			}
			.first_breadcrumb {
				.el-breadcrumb__inner {
					color: #333;
					display: inline-block;
				}
			}
			.second_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
		}
	}
	// 表单
	.add_form{
		border: 1px solid #0058ab20;
		border-radius: 0px;
		padding: 30px 7%;
		background: #0058ab02;
		// form item
		:deep(.el-form-item) {
			border: 0px solid #eee;
			padding: 0 0 20px;
			margin: 0 0 20px 0;
			background: none;
			display: flex;
			border-color: #0058ab20;
			border-width: 0 0 1px;
			border-style: dashed;
			//label
			.el-form-item__label {
			 color: inherit;
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: auto;
			 font-size: inherit;
			 text-align: right;
			 min-width: 150px;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 150px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid #0058ab30;
					padding: 0 10px;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid #0058ab30;
					border-radius: 0;
					background: #fff;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 300px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		padding: 0 150px;
		margin: 0 0 20px;
		display: flex;
		width: 100%;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 0px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #333;
			background: #0058ab10;
			width: auto;
			font-size: 14px;
			height: 36px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 0px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #333;
			background: #0058ab30;
			width: auto;
			font-size: 14px;
			height: 36px;
		}
		.formModel_confirm:hover {
		}
	}
</style>