import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    imgBase:'http://localhost:3000/',
    dphone:null,  //当前登录的手机号
    demail:null
  },
  getters: {
  },
  mutations: {
    updateUphone(state,dphone){
      state.dphone=dphone
    },

    updateUemail(state,demail){
      state.demail=demail
    }

  },
  actions: {
  },
  modules: {
  }
})
