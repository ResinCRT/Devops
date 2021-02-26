<template>
  <div id="app">
    <BodyPage/>
  </div>
</template>

<script>
import BodyPage from './components/BodyPage.vue'

export default {
  name: 'App',
  components: {
    BodyPage
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
body {
  background-color:#444
}
</style>
