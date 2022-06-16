<!-- 
  Layout component needed due to lack of TypeScript support in mdsvex layouts.
  See [this comment](https://github.com/pngwn/MDsveX/issues/116#issuecomment-1008363113) for more info.
-->
<script type="ts">
  export let title: any;
  export let author: any;
  export let resourceType: any;

  function resourceColor(resourceType: String) {
    switch (resourceType) {
      case 'book':
        return 'bg-slate-500';
      default:
        return 'bg-gray-500';
    }
  }
</script>

<a
  class="border-b-2 hover:border-b-2 hover:border-yellow-700  hover:text-yellow-700"
  href="/resources">&#12296; All Resources</a
>

<h1 class="text-center text-4xl mb-5">{title}</h1>

<span class="text-xl">By {author}</span>

<span
  class="{resourceColor(
    resourceType
  )} text-white p-1 pt-2 rounded-md pl-2 pr-2 inline-block uppercase font-sans text-sm  float-right"
  >{resourceType}</span
>
<article class="prose lg:prose-lg prose-headings:font-normal mt-5">
  <slot />
</article>
