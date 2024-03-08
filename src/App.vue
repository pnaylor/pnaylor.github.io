<script setup lang="ts">
import { ref } from "vue";

import C from "./components/C.vue";
import Info from "./components/Info.vue";
import Python from "./components/Python.vue";
import ScrollUp from "./components/ScrollUp.vue";
import Vue from "./components/Vue.vue";

const tab = ref("");
</script>

<template>
  <div>
    <nav>
      <img
        src="./assets/Vue.svg"
        @click="tab = 'Vue'"
        class="logo"
        :class="{ active: tab === 'Vue' }"
        title="Vue Projects"
        alt="Vue logo"
      />
      <img
        src="./assets/Python.svg"
        @click="tab = 'Python'"
        class="logo"
        :class="{ active: tab === 'Python' }"
        title="Python Projects"
        alt="Python logo"
      />
      <img
        src="./assets/C.svg"
        @click="tab = 'C'"
        class="logo"
        :class="{ active: tab === 'C' }"
        title="C++ Projects"
        alt="C++ logo"
      />
      <!-- 
    <img
      src="./assets/Godot.svg"
      @click="tab = 'Godot'"
      class="logo"
      :class="{ active: tab === 'Godot' }"
      alt="Godot logo"
    />
    <img
      src="./assets/WebGL.svg"
      @click="tab = 'WebGL'"
      class="logo"
      alt="WebGL logo"
    />
    -->
      <img
        src="./assets/info.svg"
        @click="tab = 'Info'"
        class="logo"
        :class="{ active: tab === 'Info' }"
        title="About Me"
        alt="info logo"
      />
    </nav>

    <h2 v-if="tab === ''">Welcome, please select a topic.</h2>

    <Transition name="fade" mode="out-in">
      <C v-if="tab === 'C'" />
      <Python v-else-if="tab === 'Python'" />
      <Vue v-else-if="tab === 'Vue'" />
      <Info v-else-if="tab === 'Info'" />
    </Transition>

    <component :is="tab"></component>

    <footer>
      <hr />
      <br />
      Paul Naylor
      <br />
      Handmade with
      <img src="./assets/Vue.svg" class="icon" alt="Vue logo" />ue
      <ScrollUp />
    </footer>
  </div>
</template>

<style scoped>
.active {
  filter: drop-shadow(0 0 0.8em green);
}

.fade-enter-active,
.fade-leave-active {
  transition: all 0.4s ease;
}

.fade-enter-from {
  opacity: 0;
  transform: translateY(-10px);
}

.fade-leave-to {
  opacity: 0;
  transform: translateY(10px);
}

.icon {
  height: 0.88em;
}

.logo {
  height: 6em;
  margin: 2.4em;
  will-change: filter;
  transition: transform 0.4s, filter 0.4s ease-out;
}

.logo:hover {
  filter: drop-shadow(0 0 0.8em blue);
}

@media only screen and (max-width: 600px) {
  .logo {
    height: 4em;
    margin: 1.2em;
  }
}
</style>
