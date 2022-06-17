<script context="module" lang="ts">
  import type { Load } from '@sveltejs/kit';
  export const load: Load = async ({ fetch }) => {
    const resources = await fetch('/api/resources.json');
    const allresources = await resources.json();

    return {
      props: {
        resources: allresources,
      },
    };
  };

  function resourceColor(resourceType: String) {
    switch (resourceType) {
      case 'book':
        return 'bg-slate-500';
      default:
        return 'bg-gray-500';
    }
  }
</script>

<script lang="ts">
  export let resources: any;
</script>

<h1 class="text-center text-4xl mb-5">Resources</h1>

<p class="text-lg mb-3">
  The following resources are a living bibliography of key resources related to resourcing the
  commons. These notes are shared in the spirit of "working in public," not as a definitive list,
  but rather as a way of sharing our perspective.
</p>

<ul>
  <li class="hidden md:flex md:gap-1 pb-2">
    <span class="pr-5 underline">Type</span>
    <span class="flex-grow self-stretch underline">Title</span>
    <span class="self-end underline">Author</span>
  </li>
  {#each resources as resource}
    <li class="md:flex gap-1">
      <span
        class="{resourceColor(
          resource.meta.resourceType
        )} text-white p-1 pt-2 rounded-md pl-2 pr-2 inline-block md:flex uppercase font-sans text-sm"
        >{resource.meta.resourceType}</span
      >
      <span class="self-stretch flex-grow text-lg p-1 block md:flex">
        <a
          class="border-b-2 hover:border-b-2 hover:border-yellow-700  hover:text-yellow-700"
          href={resource.path}>{resource.meta.title}</a
        >
      </span>
      <span class="self-end p-1 pr-0 text-neutral-500 md:text-neutral-900"
        >{resource.meta.author}</span
      >
    </li>
  {/each}
</ul>
