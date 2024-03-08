<script setup lang="ts"></script>

<template>
  <main>
    <header><h1>Python Projects</h1></header>

    <article>
      <header>
        <h2>Django White Label Learning Management Platform</h2>
        <h4>2018 ~ 2020</h4>
      </header>

      <img src="../assets/Python.brts.png" class="fit" alt="Django Apps" />

      <section>
        <p>
          This Python project was inherited when I started working with Oregon
          Research Institute and Influents Innovations. My team and I maintained
          and enhanced the existing collection of web apps, servers, databases,
          and associated native mobile apps for a few years while expanding
          their scope to support a dozen different research projects.
        </p>
        <p>
          A few of the many enhancements I worked on included evolving the
          project into a progressive web app (PWA), implementing custom landing
          pages configurable by project managers, and enhancing the web servers
          to support HTTPS encryption with auto-renewing certificates.
        </p>
        <p>
          Eventually, I became intimately familiar with the existing platform
          and its limitations relative to future goals for the platform. So I
          led the successful efforts to propose, architect, and rebuild the LMS
          platform from scratch using innovative and efficient technologies (see
          Vue section for details on the successor project).
        </p>
      </section>

      <section>
        <h3>Learn More</h3>
        <p>
          Find more details on the 'T-BIDS' platform
          <a href="https://influentsin.com/products">here.</a>
        </p>
      </section>
    </article>

    <hr />
    <br />

    <article>
      <header>
        <h2>Block Breaker Game</h2>
        <h4>2010</h4>
      </header>
      <section>
        <img src="../assets/Python.breaker1.jpeg" height="320" />
        <img src="../assets/Python.breaker2.jpeg" height="320" />
      </section>
      <p>
        Breakout style game built using the Pygame library. Extra balls make
        this version more fun than the original game.
      </p>
    </article>

    <!-- <a
    href="https://sites.google.com/site/paulenaylor/files/BlockBreaker.py?attredirects=0"
    style="font-weight: normal">
    Source
  </a> -->
  </main>
</template>

<style scoped>
img {
  padding: 0.8em;
}

p {
  width: 68vw;
  margin-left: auto;
  margin-right: auto;
}
</style>
