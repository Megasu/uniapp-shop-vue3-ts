import type { CategoryTopItem } from '@/types/category'
import { http } from '@/utils/http'

// GET/category/top
/**
 * 分类列表-小程序
 */
export const getCategoryTopAPI = () => {
  return http<CategoryTopItem[]>({
    method: 'GET',
    url: '/category/top',
  })
}
