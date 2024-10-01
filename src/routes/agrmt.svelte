<script>
  import SocialMeta from '../lib/components/SocialMeta.svelte';
</script>

<svelte:head>
  <title>Most Excellent Agreement | SocioTechnica</title>
  <meta name="description" content="Danvers and Jess' Most Excellent Agreement" />
</svelte:head>

<SocialMeta
  title="Most Excellent Agreement"
  description="Danvers and Jess' Most Excellent Agreement"
  url="https://sociotechnica.com/agrmt"
  image="https://sociotechnica.com/sociotechnica-social.png"
/>

<article class="font-typewriter text-gray-600 text-lg leading-none md:p-16 p-4 paper">
  <h1 class="text-center mb-4">Danvers' and Jess' Most Excellent Agreement</h1>
  <h2 class="text-center mb-4">July 15, 2021</h2>

  <p class="mb-4">
    I. We are friends and colleagues who have worked on and off together for 15 years.
  </p>

  <p class="mb-4">II. We are both productive, competent, flawed guys who can veer off-course.</p>

  <p class="mb-4">
    III. When the other acts in a way that we do not like or agree with, we intend to discuss the
    action as soon as possible, understanding that it may not hit our radar immediately.
  </p>

  <p class="mb-4">IV. We understand that to do this involves:</p>
  <ol class="list-decimal ml-14 mb-4">
    <li>Stating what happened in as un-objectionable a way as possible.</li>
    <li>
      Sharing what happened inside us (feelings/perceptions) as a 'microscopic truth,' taking
      ownership of 'what' happened inside us, without anchoring to the 'why.'
    </li>
    <li>Bringing true curiosity to the discussion.</li>
  </ol>

  <p class="mb-4">V. We see patterns in ourselves that are worthy of attention in these regards:</p>

  <p class="ml-9 mb-4">In Jess:</p>

  <ol class="list-decimal ml-20 mb-4">
    <li>
      I suffer from shiny object syndrome; staying focused on a single project can be challenging.
    </li>
    <li>I can “disappear” without warning for days or sometimes weeks.</li>
    <li>I sometimes use work I <i>like</i> to avoid work that's <i>important</i>.</li>
    <li>As a verbal processor, I can communicate with greater certainty than I intend.</li>
  </ol>

  <p class="ml-9 mb-4">In Danvers:</p>

  <ol class="list-decimal ml-20 mb-4">
    <li>I can be unconstructive and dramatic when I assess others.</li>
    <li>I am used to being in charge and can act autocratically.</li>
    <li>
      I can take it personally when alliances reach their natural conclusion (end), rather than
      accepting the cyclical nature of relationships.
    </li>
  </ol>

  <p class="ml-9 mb-4">As a team, we can stop work without getting to 100% done:</p>
  <ol class="list-decimal ml-20 mb-4">
    <li>Not retro-ing an activity.</li>
    <li>Not creating documentation that can be referenced with a public URL.</li>
    <li>Not disseminating that URL to appropriate parties.</li>
  </ol>

  <p class="mb-8">VI. We commit, as colleagues, to try to realize the above ideals.</p>

  <!-- two divs side-by-side using box model, tailwind styles -->
  <div class="flex flex-row justify-between md:px-20">
    <div class="w-1/2 text-center">
      <img class="mx-auto w-32" src="/jess-sig.png" alt="Jess Signature" />
    </div>
    <div class="w-1/2 text-center">
      <img class="mx-auto w-56" src="/danvers-sig.png" alt="Danvers Signature" />
    </div>
  </div>
  <div class="flex flex-row justify-between md:px-20 md:mb-0 mb-4">
    <div class="w-1/2 text-center">
      <p class="mt-auto">Jess Martin</p>
    </div>
    <div class="w-1/2 text-center">
      <p class="mb-auto">Danvers Fleury</p>
    </div>
  </div>
</article>
