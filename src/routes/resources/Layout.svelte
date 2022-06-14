<script type="ts">
	export let title: any;
	export let author: any;
	export let resourceType: any;
</script>

<h1>{title}</h1>

<p>By: {author}</p>

<p>Type: {resourceType}</p>

<slot />
