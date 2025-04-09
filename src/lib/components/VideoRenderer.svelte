<script>
  export let href = '';
  export let title = undefined;
  export let text = '';

  $: isVideo = href && href.toLowerCase().endsWith('.mp4');
</script>

{#if isVideo}
  <figure class="video-figure">
    <video controls src={href} {title} width="100%">
      Your browser does not support the video tag. Source: {href}
    </video>
    {#if text}
      <figcaption>{text}</figcaption>
    {/if}
  </figure>
{:else}
  <div class="not-prose">
    <img src={href} {title} alt={text} />
  </div>
{/if}

<style>
  figcaption {
    font-size: 0.875em; /* Slightly smaller text for caption */
    color: #6b7280; /* Tailwind gray-500 */
    text-align: center;
    margin-top: 0;
  }
  video {
    display: block; /* Ensure video takes full width potentially */
    max-width: 100%; /* Ensure video is responsive */
    height: auto; /* Maintain aspect ratio */
    border-radius: 0.375rem; /* Tailwind rounded-md */
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06); /* Tailwind shadow-sm */
    margin-bottom: 8px;
  }
</style>
