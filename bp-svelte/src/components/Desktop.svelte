<script lang="ts">
  import { exitMenu } from "../util/eventHandler";
</script>

<div class="desktop">
  <h1>Welcome to Boilerplate UI</h1>
  <button on:click={exitMenu}>Close</button>
</div>

<style>
  .desktop {
    width: 70vw;
    height: 60vh;
    max-width: 1440px;
    max-height: 900px;

    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

    background-color: rgb(41, 41, 41);
    border: 5px solid pink;
    border-radius: 5px;

    overflow: hidden;
    opacity: 1;
    transition: 1s;
  }
</style>
