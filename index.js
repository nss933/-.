import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/three',
    name: 'three',
    component: () => import('../views/VideoThree.vue'),
  },
  {
    path: '/two',
    name: 'two',
    component: () => import('../views/VideoTwo.vue'),
  },
  {
    path: '/one',
    name: 'test',
    component: () => import('../views/VideoOne.vue'),
  },
  {
    path: '/compare',
    name: 'compare',
    component: () => import('../views/Compare.vue'),
  },
  {
    path: '/video',
    name: 'video',
    component: () => import('../views/Video.vue'),
  },
  {
    path: '/download',
    name: 'download',
    component: () => import('../views/Download.vue'),
  },
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
