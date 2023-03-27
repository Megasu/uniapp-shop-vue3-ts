<!-- 静态数据演示版本 适合任何后端 -->
<template>
  <view class="app">
    <button @click="openSkuPopup()">打开SKU组件</button>

    <vk-data-goods-sku-popup
      ref="skuPopup"
      v-model="skuKey"
      border-radius="20"
      :localdata="goodsInfo"
      :mode="skuMode"
      @open="onOpenSkuPopup"
      @close="SkuPopup"
      @add-cart="addCart"
      @buy-now="buyNow"
    ></vk-data-goods-sku-popup>
  </view>
</template>

<script>
var that // 当前页面对象
export default {
  data() {
    return {
      // 是否打开SKU弹窗
      skuKey: false,
      // SKU弹窗模式
      skuMode: 1,
      // 后端返回的商品信息
      goodsInfo: {},
    }
  },
  // 监听 - 页面每次【加载时】执行(如：前进)
  onLoad(options) {
    that = this
    that.init(options)
  },
  methods: {
    // 初始化
    init(options = {}) {},
    // 获取商品信息，并打开sku弹出
    openSkuPopup() {
      /**
       * 获取商品信息
       * 这里可以看到每次打开SKU都会去重新请求商品信息,为的是每次打开SKU组件可以实时看到剩余库存
       */
      // 此处写接口请求，并将返回的数据进行处理成goodsInfo的数据格式，
      // goodsInfo是后端返回的数据
      that.goodsInfo = {
        _id: '002',
        name: '迪奥香水',
        goods_thumb:
          'https://res.lancome.com.cn/resources/2020/9/11/15998112890781924_920X920.jpg?version=20200917220352530',
        sku_list: [
          {
            _id: '004',
            goods_id: '002',
            goods_name: '迪奥香水',
            image:
              'https://res.lancome.com.cn/resources/2020/9/11/15998112890781924_920X920.jpg?version=20200917220352530',
            price: 19800,
            sku_name_arr: ['50ml/瓶'],
            stock: 100,
          },
          {
            _id: '005',
            goods_id: '002',
            goods_name: '迪奥香水',
            image:
              'https://res.lancome.com.cn/resources/2020/9/11/15998112890781924_920X920.jpg?version=20200917220352530',
            price: 9800,
            sku_name_arr: ['70ml/瓶'],
            stock: 100,
          },
        ],
        spec_list: [
          {
            list: [
              {
                name: '20ml/瓶',
              },
              {
                name: '50ml/瓶',
              },
              {
                name: '70ml/瓶',
              },
            ],
            name: '规格',
          },
        ],
      }
      that.skuKey = true
    },
    // sku组件 开始-----------------------------------------------------------
    onOpenSkuPopup() {
      console.log('监听 - 打开sku组件')
    },
    SkuPopup() {
      console.log('监听 - 关闭sku组件')
    },
    // 加入购物车前的判断
    addCartFn(obj) {
      let { selectShop } = obj
      // 模拟添加到购物车,请替换成你自己的添加到购物车逻辑
      let res = {}
      let name = selectShop.goods_name
      if (selectShop.sku_name != '默认') {
        name += '-' + selectShop.sku_name_arr
      }
      res.msg = `${name} 已添加到购物车`
      if (typeof obj.success == 'function') obj.success(res)
    },
    // 加入购物车按钮
    addCart(selectShop) {
      console.log('监听 - 加入购物车')
      that.addCartFn({
        selectShop: selectShop,
        success: function (res) {
          // 实际业务时,请替换自己的加入购物车逻辑
          that.toast(res.msg)
          setTimeout(function () {
            that.skuKey = false
          }, 300)
        },
      })
    },
    // 立即购买
    buyNow(selectShop) {
      console.log('监听 - 立即购买')
      that.addCartFn({
        selectShop: selectShop,
        success: function (res) {
          // 实际业务时,请替换自己的立即购买逻辑
          that.toast('立即购买')
        },
      })
    },
    toast(msg) {
      uni.showToast({
        title: msg,
        icon: 'none',
      })
    },
  },
}
</script>

<style lang="scss" scoped>
.app {
  padding: 30rpx;
  font-size: 28rpx;
}
</style>
