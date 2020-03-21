<template>
  <div id="app">
    <Header/>
    <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
    <Main/>
  </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import Main from './pages/Main';
import Header from './components/Header';

export default {
  name: 'App',
  components: {
    // HelloWorld,
    Main,
    Header
  }
}
</script>

<style>
body, html {
  margin: 0;
  padding: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
