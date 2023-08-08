import {createRouter, createWebHistory} from 'vue-router';
import root from './root';

import { ADMIN_USER_TOKEN, USER_TOKEN } from '/@/store/constants'

// 路由权限白名单
const allowList = ['adminLogin', 'login', 'register', 'portal', 'search', 'detail', '403', '404']
// 前台登录地址
const loginRoutePath = '/index/login'
// 后台登录地址
const adminLoginRoutePath = '/adminLogin'


const router = createRouter({
  history: createWebHistory(),
  routes: root,
});

router.beforeEach(async (to, from, next) => {
  console.log(to, from)

  /** 路由 **/
  if (to.path.startsWith('/admin')) {
    if (localStorage.getItem(ADMIN_USER_TOKEN)) {
      if (to.path === adminLoginRoutePath) {
        next({ path: '/' })
      } else {
        next()
      }
    } else {
      if (allowList.includes(to.name)) {
        // 在免登录名单，直接进入
        next()
      } else {
        next({ path: adminLoginRoutePath, query: { redirect: to.fullPath } })
      }
    }

    // next()
  }


});

router.afterEach((_to) => {
  // 回到顶部
  let html = document.getElementById("html");
  if(html){
    html.scrollTo(0, 0)
  }
});

export default router;
