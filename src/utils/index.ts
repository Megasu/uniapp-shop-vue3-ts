/**
 * 日期格式化函数
 * @param date 日期对象
 * @param format 日期格式，默认为 YYYY-MM-DD HH:mm:ss
 */
export const formatDate = (date: Date, format = 'YYYY-MM-DD HH:mm:ss') => {
  // 获取年月日时分秒，通过 padStart 补 0
  const year = String(date.getFullYear())
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')
  const hours = String(date.getHours()).padStart(2, '0')
  const minutes = String(date.getMinutes()).padStart(2, '0')
  const seconds = String(date.getSeconds()).padStart(2, '0')

  // 返回格式化后的结果
  return format
    .replace('YYYY', year)
    .replace('MM', month)
    .replace('DD', day)
    .replace('HH', hours)
    .replace('mm', minutes)
    .replace('ss', seconds)
}
