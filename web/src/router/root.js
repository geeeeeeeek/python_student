// 路由表
const constantRouterMap = [

  {
    path: '/',
    redirect: '/admin',
  },
  {
    path: '/adminLogin',
    name: 'adminLogin',
    component: () => import('/@/views/admin-login.vue'),
  },
  {
    path: '/admin',
    name: 'admin',
    redirect: '/admin/thing',
    component: () => import('/@/views/main.vue'),
    children: [
      { path: 'overview', name: 'overview', component: () => import('/@/views/overview.vue') },
      { path: 'thing', name: 'thing', component: () => import('/@/views/thing.vue') },
      { path: 'comment', name: 'comment', component: () => import('/@/views/comment.vue') },
      { path: 'user', name: 'user', component: () => import('/@/views/user.vue') },
      { path: 'classification', name: 'classification', component: () => import('/@/views/classification.vue') },
      { path: 'tag', name: 'tag', component: () => import('/@/views/tag.vue') },
      { path: 'ad', name: 'ad', component: () => import('/@/views/ad.vue') },
      { path: 'notice', name: 'notice', component: () => import('/@/views/notice.vue') },
      { path: 'loginLog', name: 'loginLog', component: () => import('/@/views/login-log.vue') },
      { path: 'opLog', name: 'opLog', component: () => import('/@/views/op-log.vue') },
      { path: 'errorLog', name: 'errorLog', component: () => import('/@/views/error-log.vue') },
      { path: 'sysInfo', name: 'sysInfo', component: () => import('/@/views/sys-info.vue') },
    ]
  },
];

export default constantRouterMap;
