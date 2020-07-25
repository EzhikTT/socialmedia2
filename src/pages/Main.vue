<template>
    <div class="main">
        <div class="banner"></div>
        <div class="body">
            <div class="news">
                <div class="article" 
                     v-for="(item, id) in news" 
                     :key="`article_${id}`">
                    <div class="head">
                        <div>{{ item.title }}</div>
                        <div>{{ item.date }}</div>
                    </div>
                    <div class="desc">{{ item.desc }}</div>
                    <div class="author">{{ item.author }}</div>
                </div>
            </div>
            <div class="form">
                <h2 v-if="successRegistration">Вы успешно зарегистрированы</h2>
                <form v-else>
                    <label>
                        <span>Название</span>
                        <input type="text" 
                               v-model="name" 
                               :class="{error: isError && !name}"/>
                        <span v-show="isError && !name">
                            Введите название!
                        </span>
                    </label>
                    <label>
                        <span>Тип</span>
                        <input type="text"
                               v-model="type"
                               :class="{error: isError && !type}"/>
                        <span v-show="isError && !type">
                            Введите тип!
                        </span>
                    </label>
                    <label>
                        <span>Дата открытия</span>
                        <input type="date"
                               v-model="dateOpen"
                               :class="{error: isError && !dateOpen}"/>
                        <span v-show="isError && !dateOpen">
                            Введите дату открытия!
                        </span>
                    </label>
                    <label>
                        <span>Логин</span>
                        <input type="text"
                               v-model="login"
                               :class="{error: isError && !login}"/>
                        <span v-show="isError && !login">
                            Введите логин!
                        </span>
                    </label>
                    <label>
                        <span>Пароль</span>
                        <input type="password"
                               v-model="password"
                               :class="{error: isError && (!password || password !== checkPass)}"/>
                    </label>
                    <label>
                        <span>Повторите пароль</span>
                        <input type="password"
                               v-model="checkPass" 
                               :class="{error: isError && (!checkPass || password !== checkPass)}"/>
                        <span v-show="isError && (!checkPass || !password || password !== checkPass)">
                            Пароли не совпадают!
                        </span>
                    </label>
                    <button @click="submit">Зарегистрироваться</button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Main',
    data() {
        return {
            name: '',
            type: '',
            password: '',
            checkPass: '',
            dateOpen: '',
            login: '',
            needCheck: false,
            successRegistration: false,
            news: []
        };
    },
    computed: {
        isError(){
            if(this.needCheck){
                return !(this.password === this.checkPass && 
                       this.name && this.type && this.login && this.dateOpen);
            }
            return false;
        }
    },
    methods: {
        submit(event) {
            event.preventDefault();
            this.needCheck = true;
            if(!this.isError){
                fetch(
                    '//192.168.64.3/api/user/registration.php',
                    {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            name: this.name,
                            type: this.type,
                            login: this.login,
                            password: this.password,
                            dateOpen: new Date(this.dateOpen).valueOf() / 1000
                        })
                    }
                ).then(res=>res.json()).then(res=>{
                    if(res && res.res){
                        this.name = '';
                        this.type = '';
                        this.login = '';
                        this.dateOpen = '';
                        this.password = '';
                        this.checkPass = '';
                        this.needCheck = false; 
                        this.successRegistration = true;
                    }
                }).catch(err=>{console.log(err);});
            }
        }
    },
    mounted(){
        fetch(
            '//192.168.64.3/api/news/index.php',
            {
                headers: {
                    'Content-Type': 'application/json'
                }
            }
        ).then(res => res.json()).then(res => {
            // console.log(res);
            this.news = res;
        });
    }
}
</script>

<style lang="scss" scoped>
.main {
    display: flex;
    width: 100%;
    height: 100%;
    flex-direction: column;
    .banner {
        height: 20%;
        width: 100%;
    }
    .body {
        height: 80%;
        width: 100%;
        display: flex;
        .news {
            width: 60%;
            height: 100%;
            margin-top: 2rem;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            .article {
                width: 80%;
                margin-bottom: 1rem;
                .head {
                    display: flex;
                    justify-content: space-between;
                    align-items: flex-end;
                    margin-bottom: .5rem;
                    div {
                        &:first-child {
                            font-size: 1.6rem;
                        }
                        &:last-child {
                            color: red;
                            font-size: .9rem;
                        }
                    }
                }
                .desc {
                    width: 100%;
                    box-sizing: border-box;
                    padding-left: 2rem;
                    // margin-bottom: .5rem;
                    font-size: 1.1rem;
                    font-style: italic;
                }
                .author {
                    text-align: end;
                    font-size: .9rem;
                    font-weight: 600;
                }
            }
        }
        .form {
            width: 40%;
            height: 100%;
            padding: 16px 0 0 16px;
            box-sizing: border-box;
            h2 {
                margin: 16px 0 8px;
                font-size: 1.5rem;
                color: rgb(110,170,120);
            }
            form {
                display: flex;
                flex-direction: column;
                width: 80%;
                label {
                    display: flex;
                    flex-direction: column;
                    margin-bottom: 12px;
                    span {
                        text-transform: uppercase;
                        margin-left: 4px;
                        &:first-child{
                            margin-bottom: 4px;
                            color: rgba(110,110,130,.8);
                            font-size: 1rem;
                        }
                        &:last-child {
                            font-size: .6rem;
                            margin-top: 4px;
                            color: red;
                        }
                    }
                    input {
                        border: 2px solid rgba(110,110,130,.8);
                        padding: 8px 4px;
                        border-radius: 3px;
                        font-size: 1rem;
                        &.error {
                            border-color: red;
                        }
                    }
                }
                button {
                    display: flex;
                    margin: 16px auto 0;
                    border: 2px solid rgba(110,110,130,.8);
                    padding: 12px 8px;
                    text-transform: uppercase;
                    border-radius: 2px;
                    font-size: 1.1rem;
                    font-weight: 500;
                    &:hover {
                        cursor: pointer;
                    }
                }
            }
        }
    }
}
</style>