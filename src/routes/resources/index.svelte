<script context="module">
	export const load = async ({ fetch }) => {
		const posts = await fetch('/api/resources.json');
		const allPosts = await posts.json();

		return {
			props: {
				posts: allPosts
			}
		};
	};
</script>

<script>
	export let resources;
</script>

<h1>Test</h1>

<ul>
	{#each resources as resource}
		<li>{resource.title}</li>
	{/each}
</ul>
