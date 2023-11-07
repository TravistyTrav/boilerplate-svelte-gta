<script lang="ts">
  import Desktop from "./components/Desktop.svelte";
  import { handlerMessage } from "./util/eventHandler";

  handlerMessage();
</script>

<main>
  <Desktop />
</main>
