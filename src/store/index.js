import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export default new Vuex.Store({
    state: {
        isLogin: localStorage.getItem('id') && localStorage.getItem('login'),
        userId: localStorage.getItem('id') || '',
        login: localStorage.getItem('login') || '',
        status: 'offline',
        notifications: []
    },
    mutations: {
        login(state) {
            state.isLogin = true;
        },
        logout(state) {
            state.isLogin = false;
        },
        setUserId(state, userId) {
            state.userId = userId;
        },
        setLogin(state, login) {
            state.login = login;
        },
        setStatus(state, status) {
            state.status = status;
        },
        setNotifications(state, notifications) {
            state.notifications = notifications;
        }
    },
    actions: {
        authorize({commit}, {login, password}) {
            fetch(
                '//192.168.64.3/api/user/authorize.php',
                {
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        login,
                        password
                    })
                }
            ).then(res => res.json()).then(res => {
                // console.log(res);
                // this.isFormOpen = false;
                commit('login'); // this.isLogin = true;
                localStorage.setItem('id', res.userId);
                commit('setUserId', res.userId);
                localStorage.setItem('login', login);
                commit('setLogin', login);
                commit('setStatus', 'online'); // this.setStatus('online', res.userId);
            });
        },
        exit({commit}) {
            commit('setStatus', 'offline');
            commit('setUserId', '');
            commit('setLogin', '');
            commit('logout');

        //    this.setStatus('offline', localStorage.getItem('id'));
           localStorage.setItem('id', '');
           localStorage.setItem('login', '');
        //    this.isLogin = false;
        //    this.login = '';
        //    this.password = '';
        },
        removeNotification({commit, state}, {id}){
            fetch(
                `//192.168.64.3/api/notification.php?id=${state.notifications[id].id}`,
                {
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    method: 'delete'
                }
            ).then(res => res.json()).then(() => {
                let notifications = state.notifications;
                notifications.splice(id, 1);
                commit('setNotifications', notifications);
                // state.notifications = notifications;
                // this.notifications.splice(id, 1);
            });
        }
    }
});