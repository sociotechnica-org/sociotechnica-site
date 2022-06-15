<!-- 
  Layout component needed due to lack of TypeScript support in mdsvex layouts.
  See [this comment](https://github.com/pngwn/MDsveX/issues/116#issuecomment-1008363113) for more info.
-->
<script type="ts">
  export let title: any;
  export let author: any;
  export let resourceType: any;
</script>

<h1>{title}</h1>

<p>By: {author}</p>

<p>Type: {resourceType}</p>

<slot />
