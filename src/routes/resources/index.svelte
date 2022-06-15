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

<p class="text-xl mb-3">
  The following resources are a living bibliography of the work on resourcing the commons.
</p>

<ul>
  {#each resources as resource}
    <li>
      <span class="{resourceColor(resource.meta.resourceType)} text-white p-1 rounded-sm pl-2 pr-2"
        >{resource.meta.resourceType}</span
      >
      <a href={resource.path}>{resource.meta.title}</a>
    </li>
  {/each}
</ul>
