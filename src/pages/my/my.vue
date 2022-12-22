<script setup lang="ts">
import { useMemberStore } from '@/stores'
import { http } from '@/utils/http'

const memberStore = useMemberStore()
// 测试请求
const getData = async () => {
  const res = await http<number[]>({
    method: 'GET',
    url: '',
    header: {},
  })
  console.log('获取数据成功', res.result)
}
</script>

<template>
  <view class="my">
    <view>会员信息：{{ memberStore.profile }}</view>
    <button
      @tap="
        memberStore.setProfile({
          nickname: '黑马先锋',
          token: '12345',
        })
      "
      size="mini"
      plain
      type="primary"
    >
      保存用户信息
    </button>
    <button
      @tap="memberStore.clearProfile()"
      size="mini"
      plain
      type="warn"
    >
      清理用户信息
    </button>
    <button @tap="getData" size="mini" plain type="primary">
      测试请求
    </button>
  </view>
</template>

<style lang="scss">
//
</style>
