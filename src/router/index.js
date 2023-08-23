import { createRouter, createWebHistory } from 'vue-router'
import ContactPage from '../views/ContactPage.vue'
import LandingPage from '../views/LandingPage.vue'
const routes = [
  {
    path: '/',
    name: 'landing',
    component: LandingPage
  },
  {
    path: '/contact',
    name: 'contact',
    component: ContactPage
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
