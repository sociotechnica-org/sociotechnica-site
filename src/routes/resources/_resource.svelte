<script lang="ts">
  import Layout from './Layout.svelte';
  export let title = '';
  export let author = '';
  export let resourceType = '';
</script>

<Layout {title} {author} {resourceType}>
  <slot />
</Layout>
