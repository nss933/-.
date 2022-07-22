import Vue from 'vue'
import VueRouter from 'vue-router'
// import HomeView from '../views/HomeView.vue'
// import Technique from '../views/Technique.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/rootlogin',
    name: 'Root',
    component: () => import('../views/RootLogin.vue'),
  },
  {
    path: '/tec',
    name: 'Tec',
    component: () => import('../views/Technique.vue'),
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('../views/Login.vue'),
  },
  {
    path: '/reg',
    name: 'Reg',
    component: () => import('../views/Reg.vue'),
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
