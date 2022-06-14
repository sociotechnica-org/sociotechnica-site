<script context="module" lang="ts">
	import type { Load } from '@sveltejs/kit';
	export const load: Load = async ({ fetch }) => {
		const resources = await fetch('/api/resources.json');
		const allresources = await resources.json();

		return {
			props: {
				resources: allresources
			}
		};
	};
</script>

<script lang="ts">
	import Resource from './_resource.svelte';

	export let resources: any;
</script>

<h1 class="text-center text-4xl mb-5">Resources</h1>

<p class="text-xl mb-3">
	The following resources are a living bibliography of the work on resourcing the commons.
</p>

<ul>
	{#each resources as resource}
		<li><a href={resource.path}>{resource.meta.title}</a></li>
	{/each}
</ul>
