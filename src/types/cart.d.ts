/** 购物车类型 */
export type CartItem = {
  /** 商品 ID */
  id: string
  /** SKU ID */
  skuId: string
  /** 商品名称 */
  name: string
  /** 图片 */
  picture: string
  /** 数量 */
  count: number
  /** 加入时价格 */
  price: number
  /** 当前的价格 */
  nowPrice: number
  /** 库存 */
  stock: number
  /** 是否选中 */
  selected: boolean
  /** 属性文字 */
  attrsText: string
  /** 是否为有效商品 */
  isEffective: boolean
}
