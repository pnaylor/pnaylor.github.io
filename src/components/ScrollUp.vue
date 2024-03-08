<template>
  <button class="scroll-up" @click="scrollUp" v-if="isVisible">^</button>
</template>

<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount } from "vue";

const isVisible = ref(false);

const checkVisibility = () => {
  isVisible.value = window.scrollY > 200; // Adjust the value as needed
};

const scrollUp = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
};

onMounted(() => {
  window.addEventListener("scroll", checkVisibility);
});

onBeforeUnmount(() => {
  window.removeEventListener("scroll", checkVisibility);
});
</script>

<style scoped>
.scroll-up {
  position: fixed;
  background-color: black;
  color: green;
  bottom: 20px;
  right: 20px;
}
</style>
