<template>
  <nav class="navbar has-background-light">
    <div class="navbar-brand">
      <nuxt-link class="navbar-item" to="/">
        BLACK LIST
      </nuxt-link>

      <a
        role="button"
        class="navbar-burger burger"
        aria-label="menu"
        aria-expanded="false"
        data-target="navbarBasicExample"
      >
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>
    <div class="navbar-menu">
      <div class="navbar-start">
        <nuxt-link
          v-for="item in items"
          :key="item.title"
          :to="item.url"
          class="navbar-item"
        >
          {{ item.title }}
        </nuxt-link>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  data: () => ({
    showNav: false,
    items: [
      { title: '会社', icon: 'home', url: '/' },
      { title: 'ニュース', icon: 'code', url: '/' },
      { title: 'About', icon: 'question_answer', url: '/About' }
    ]
  })
}
</script>

<style>
.navbar {
  margin-bottom: 20px;
}
</style>
