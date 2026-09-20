<template>
	<div>
		<div class="home_box">
			<!-- 车位信息推荐 -->
			<div class="recomList_view">
				<div class="recomList_title">车位信息推荐</div>
				<div class="recommend_list_two">
					<mySwiper :data="cheweixinxiRecomList" :type="3"
						:loop="false"
						:navigation="true"
						:pagination="false"
						:paginationType="1"
						:scrollbar="false"
						:slidesPerView="3"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="false"
						:effectType="0"
						:direction="horizontal"
						:autoplay="false"
						:slidesPerColumn="1">
						<template #default="scope">
							<div class="recommend_item animation_box" @click="detailClick('cheweixinxi',scope.row.id)">
								<div class="recommend_img_box">
									<img class="recommend_img" v-if="isHttp(scope.row.cheweitupian)" :src="scope.row.cheweitupian.split(',')[0]" alt="">
									<img class="recommend_img" v-else :src="scope.row.cheweitupian?$config.url + scope.row.cheweitupian.split(',')[0]:''" alt="">
								</div>
								<div class="recommend_content">
									<div class='recommend_title'>
										车位号：{{scope.row.cheweihao}}
									</div>
									<div class='recommend_title'>
										车位状态：{{scope.row.cheweizhuangtai}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="recommend_more_view" @click="moreClick('cheweixinxi')">
					<span class="recommend_more_text">LEARN MORE</span>
				</div>
			</div>
		</div>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//车位信息推荐
	const cheweixinxiRecomList = ref([])
	const getcheweixinxiRecomList = () => {
		let autoSortUrl = 'cheweixinxi/autoSort'
		context?.$http({
			url: autoSortUrl,
			method: 'get',
			params: {
				page: 1,
				limit: 12
			}
		}).then(res => {
			cheweixinxiRecomList.value = res.data.data.list
		})
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//车位信息推荐
		getcheweixinxiRecomList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		padding: 0;
		margin: 0 auto;
		overflow: hidden;
		color: #666;
		display: flex;
		width: 100%;
		font-size: 14px;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 40px 0 60px;
		margin: 0px 0 0;
		background: #eef0f4;
		width: 100%;
		order: 3;
		.recomList_title {
			margin: 0 auto 20px;
			color: #666;
			font-weight: 500;
			width: 600px;
			font-size: 24px;
			text-align: center;
		}
		// list
		.recommend_list_two {
			padding: 0 18%;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.recommend_item {
				cursor: pointer;
				margin: 0 10px;
				background: #fff;
				width: 100%;
				position: relative;
				.recommend_img_box {
					cursor: pointer;
					width: 100%;
					height: 375px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					padding: 10px 20px;
					background: rgba(0,0,0,.3);
					bottom: 0;
					width: 100%;
					position: absolute;
					.recommend_title {
						color: #fff;
						font-weight: 500;
						width: 100%;
						font-size: 16px;
						text-align: left;
					}
					.recommend_price {
						color: #f00;
						width: auto;
						font-size: 14px;
						text-align: right;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 1px solid #ddd;
			border-radius: 30px;
			padding: 8px 0;
			margin: 20px auto 0;
			color: #999;
			background: #f6f6f6;
			display: none;
			width: 120px;
			text-align: center;
			.recommend_more_text {
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 40px 0 0;
		margin: 0 auto;
		background: #fff;
		width: 100%;
		order: 4;

		.newsList_title {
			margin: 0 auto 20px;
			color: #666;
			background: none;
			font-weight: 500;
			width: 600px;
			font-size: 24px;
			text-align: center;
		}
		// list
		.news_list_four {
			padding: 0 18%;
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			justify-content: space-between;
			.news_left {
				flex-direction: row;
				display: flex;
				width: 100%;
				justify-content: space-between;
				flex-wrap: wrap;
				.four_left_item{
					border: 0px solid #ddd;
					cursor: pointer;
					padding: 20px 20px 20px;
					margin: 0 0 4px;
					display: flex;
					width: 48%;
					border-width: 0 0 1px;
					justify-content: space-between;
					align-items: center;
					.time_box {
						padding: 18px 0 0;
						color: #fff;
						background: url(http://clfile.zggen.cn/20231025/338cd75fb54f495c87646a84feb04c4e.png) no-repeat left center;
						display: block;
						width: 67px;
						min-height: 74px;
						text-align: center;
						.year{
							padding: 4px 0 0;
							color: inherit;
							line-height: 1;
						}
						.date{
							font-weight: bold;
							width: 100%;
							font-size: 20px;
							line-height: 1;
						}
					}
				}
				.content{
					margin: 0 0 0 10px;
					width: calc(100% - 90px);
					.news_title{
						color: #333;
						font-weight: 600;
						font-size: 14px;
					}
					.news_text{
						padding: 10px 0 0;
						overflow: hidden;
						color: #999;
						display: -webkit-box;
						font-size: 14px;
						text-overflow: ellipsis;
						-webkit-box-orient: vertical;
						-webkit-line-clamp: 2;
					}
				}
				
			}
			.news_right {
				margin: 0 0 0 20px;
				display: none;
				width: calc(30% - 20px);
				.four_right_item {
					.img_box {
					width: 100%;
					font-size: 0;
					height: 300px;
						.news_img {
					object-fit: cover;
					width: 100%;
					height: 100%;
						}
					}
					.content {
						width: 100%;
						text-align: center;
						.news_title {
							font-size: 16px;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 1px solid #ddd;
			border-radius: 30px;
			padding: 8px 0;
			margin: 20px auto 0;
			color: #999;
			background: #f6f6f6;
			display: none;
			width: 120px;
			text-align: center;
			.news_more_text {
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 40px 0 10px;
		margin: 0 auto;
		width: 100%;
		order: 1;

		.homeList_title {
			margin: 0px auto;
			color: #666;
			background: none;
			font-weight: 500;
			width: 600px;
			font-size: 24px;
			text-align: center;
		}
		// list
		.home_list_two {
			padding: 0 18%;
			margin: 20px auto;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.home_item {
				margin: 0 10px;
				background: #fff;
				width: 100%;
				.home_img_box {
					width: 100%;
					font-size: 0;
					.home_img {
						width: 100%;
					}
				}
				.home_content {
					.home_title {
						color: #000;
						background: url(http://clfile.zggen.cn/20231025/9df71975afcd486bb53b85692ea9b4ea.png) no-repeat left top;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 40px;
						text-align: center;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 1px solid #ddd;
			border-radius: 30px;
			padding: 8px 0;
			margin: 20px auto;
			color: #999;
			background: #f6f6f6;
			display: none;
			width: 120px;
			text-align: center;
			.homeList_more_text {
			}
		}
	}
	// 首页展示
</style>