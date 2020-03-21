<template>
    <header>
        <div class="menu" :class="{open: isMenuOpen}">
            <span @click="isMenuOpen = !isMenuOpen"></span>
            <nav>
                <a>Текст</a>
                <a>Текст</a>
                <a>Текст</a>
                <a>Текст</a>
            </nav>
        </div>
        <div class="login">
            Войти
        </div>
    </header>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
   name: 'Header',
   data() {
       return {
           isMenuOpen: false
       };
   } 
})
</script>

<style lang="scss" scoped>
    header {
        box-shadow: 0 0 8px 0 black;
        width: 100%;
        padding: 8px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-sizing: border-box;
        > div {
            &.menu {
                position: relative;
                > span {
                    position: relative;
                    height: 30px;
                    width: 25px;
                    display: flex;
                    &:after, &:before {
                        content: '';
                        width: 25px;
                        height: 3px;
                        background-color: rgba(24, 5, 5, 0.8);
                        border-radius: 5px;
                        position: absolute;
                        left: 0;
                    }
                    &:after {
                        top: 35%;
                    }
                    &:before {
                        top: 65%;
                    }
                }
                > nav {
                    display: none;
                    flex-direction: column;
                    align-items: center;
                    position: absolute;
                    left: 0;
                    > a {
                        text-decoration: none;
                        color: black;
                        padding: 4px 16px 4px 0;
                    }
                }
                &.open {
                    > nav {
                        display: flex;
                    }
                }
            }
            &.login {
                padding: 4px;
                transition: .3s;
                border-radius: 2px;
                &:hover {
                    cursor: pointer;
                    background-color: rgba(120, 120, 120, .3);
                    transition: .3s;
                }
            }
        }
    }
</style>