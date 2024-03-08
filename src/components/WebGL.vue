<script setup lang="ts">
import { ref } from "vue";
</script>

<template>
  <h2>WebGL Benchmark ~ 2012</h2>

  <canvas id="canvas" width="658" height="410"></canvas>

  <div id="framerate"></div>
  <input type="checkbox" id="lighting" checked />
  Use Lighting
  <input type="checkbox" id="per-pixel" checked style="display: none" />

  <p>A basic benchmark exercise created to experiment with WebGL.</p>
  <p>The JavaScript and OpenGL source is available in this page.</p>
  <p>Click & drag to rotate camera.</p>
</template>

<style scoped></style>
