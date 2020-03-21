<template>
    <main>
        <section>
            <div class="controls">
                <div @click="isFormLogin = true" :class="{active: isFormLogin}">Login</div>
                <div @click="isFormLogin = false" :class="{active: !isFormLogin}">Reqistration</div>
            </div>
            <form v-if="isFormLogin">
                <input type="text" v-model="login"/>
                <input type="password" v-model="password"/>
                <button @click="submit">Login</button>
            </form>
            <form v-else>
                <input type="text" v-model="login"/>
                <input type="email" v-model="email"/>
                <input type="password" v-model="password"/>
                <input type="password" v-model="checkPas"/>
                <button @click="submit">Registration</button>
            </form>
        </section>
    </main>
</template>

<script>
export default {
    name: 'Main',
    data() {
        return {
            login: '',
            password: '',
            email: '',
            checkPas: '',
            isFormLogin: true
        };
    },
    methods: {
        submit(event) {
            event.defaultPrevent();
            fetch(
                '<url>',
                {
                    // method
                    // headers
                    body: JSON.stringify({
                        login: this.login,
                        password: this.password
                    })
                }
            ).then(res=>res.json()).then(res=>{
                this.login = res.login;
            }).catch();
        }
    }
}
</script>

<style lang="scss" scoped>
main {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    section {
        box-shadow: 0 0 10px 0 rgba(0,0,0,.3);
        padding: 1rem;
        display: flex;
        flex-direction: column;
        .controls {
            display: flex;
            justify-content: center;
            align-items: center;
            > div {
                padding: 10px 5px;
                &.active {
                    background-color: rgba($color: pink, $alpha: .4);
                }
                &:first-child {
                    margin-right: 15px;
                }
            }
        }
        form {
            display: flex;
            flex-direction: column;
        }
    }
}
</style>