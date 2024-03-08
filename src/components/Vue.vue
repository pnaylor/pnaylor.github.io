<script setup lang="ts">
import { ref } from "vue";

const focus = ref("");
</script>

<template>
  <main>
    <header><h1>Vue Projects</h1></header>

    <article>
      <header>
        <h2>Cross-Platform White Label Learning Management Platform</h2>
        <h4>2020 ~ 2023</h4>
      </header>

      <img src="../assets/Vue.brts.png" alt="Vue Apps" class="fit" />

      <section>
        <p>
          This was a project I initiated after working with Oregon Research
          Institute and Influents Innovations on their existing LMS platform for
          a few years and recognizing the limitations holding it back.
          <br />
          (See Python section for more details on the legacy product)
        </p>
        <p>
          In the first year of the project, I led the proposal, prototyping, and
          architecture phases of the software rebuild process. Next, my small
          team and I completed the core project and features over two more years
          of development, then launched our organization's new flagship product
          across web and mobile platforms successfully.
        </p>
      </section>

      <br />

      <section>
        <h3>Major Enhancements</h3>
        <table>
          <tr>
            <th>New Software Advantages</th>
            <th>Legacy Software Limitations</th>
          </tr>
          <tr>
            <td>
              One unified codebase which compiles to native web, iOS & Android
              mobile versions
            </td>
            <td>
              Three different codebases, one for each platform supported, each
              in a different language
            </td>
          </tr>
          <tr>
            <td>
              Cloud based serverless backend architecture, easily scalable and
              hosted by Google Firebase
            </td>
            <td>
              Custom Django / Apache web servers, hosted by inhouse IT staff,
              managed manually by me primarily and our small software team
            </td>
          </tr>
          <tr>
            <td>
              Modern frontend framework and component libraries for rapid
              development and supperior visual and interactive quality
            </td>
            <td>
              No frontend framework foundation, all UI/UX design work done with
              basic Django templates, further hindering our productivity and
              ability to iterate quickly
            </td>
          </tr>
        </table>
      </section>

      <br />

      <section>
        <h3>Tech Stack</h3>
        <img
          src="../assets/TS.svg"
          @click="focus = 'ts'"
          @mouseover="focus = 'ts'"
          @mouseleave="focus = ''"
          class="logo"
          alt="TypeScript logo"
        />
        <img
          src="../assets/Node.svg"
          @click="focus = 'node'"
          @mouseover="focus = 'node'"
          @mouseleave="focus = ''"
          class="logo"
          alt="Node logo"
        />
        <img
          src="../assets/Vue.svg"
          @click="focus = 'vue'"
          @mouseover="focus = 'vue'"
          @mouseleave="focus = ''"
          class="logo"
          alt="Vue logo"
        />
        <img
          src="../assets/Firebase.svg"
          @click="focus = 'firebase'"
          @mouseover="focus = 'firebase'"
          @mouseleave="focus = ''"
          class="logo"
          alt="Firebase logo"
        />
        <img
          src="../assets/Ionic.svg"
          @click="focus = 'ionic'"
          @mouseover="focus = 'ionic'"
          @mouseleave="focus = ''"
          class="logo"
          alt="Ionic logo"
        />
        <img
          src="../assets/Capacitor.svg"
          @click="focus = 'capacitor'"
          @mouseover="focus = 'capacitor'"
          @mouseleave="focus = ''"
          class="logo"
          alt="Capacitor logo"
        />
        <p :class="{ focused: focus === 'ts' }">TypeScript</p>
        <p :class="{ focused: focus === 'node' }">Node.js</p>
        <p :class="{ focused: focus === 'vue' }">Vue Framework</p>
        <p :class="{ focused: focus === 'firebase' }">Firebase + GCP</p>
        <p :class="{ focused: focus === 'ionic' }">Ionic Framework</p>
        <p :class="{ focused: focus === 'capacitor' }">
          Capacitor Hybrid Mobile Apps
        </p>
      </section>

      <br />

      <section>
        <h3>Learn More</h3>
        <p>
          For a sample of hybrid mobile versions of an app compiled from the
          unified LMS platform, please check out these
          <a href="https://apps.apple.com/us/app/beready2smile/id1668492160">
            App Store
          </a>
          and
          <a
            href="https://play.google.com/store/apps/details?id=app.web.beready2smile"
          >
            Play Store
          </a>
          pages of an associated project.
        </p>
        <p>
          Find more details about specific projects utilizing the custom LMS
          platform
          <a href="https://influentsin.com/products"> here </a> in the 'Be Ready
          To Smile' & 'MomMoodBooster' product sections.
        </p>
      </section>
    </article>

    <hr />
    <br />

    <article>
      <header>
        <h2>Pokemon Browser</h2>
        <h4>2023</h4>
      </header>

      <img src="../assets/Pokemon.png" class="fit" alt="Pokemon Project" />

      <p>
        This mini-project queries a public Pokemon database API then presents
        over a thousand characters in a paginated and sortable browser. The
        project can be cloned and demoed and the code browsed in
        <a href="https://github.com/pnaylor/pokemon" alt="Pokemon Github repo">
          GitHub.
        </a>
      </p>
    </article>
  </main>
</template>

<style scoped>
p {
  width: 68vw;
  margin-left: auto;
  margin-right: auto;
  transition: transform 0.4s;
}

table {
  max-width: 80%;
  margin-left: auto;
  margin-right: auto;
}

table,
td {
  text-align: left;
  border: 1px solid black;
}

td {
  padding: 20px;
}

.focused {
  transform: scale(1.8);
}

.logo {
  height: 3em;
  padding: 1em;
}

.logo:hover {
  transform: scale(1.4);
}
</style>
