<script>
  import SocialMeta from '../lib/components/SocialMeta.svelte';
</script>

<svelte:head>
  <title>SocioTechnica</title>
</svelte:head>

<SocialMeta
  title="SocioTechnica"
  description="SocioTechnica is a collaboration between Danvers Fleury and Jess Martin."
  url="https://sociotechnica.org"
  image="https://sociotechnica.org/sociotechnica-social.png"
/>

<h1 class="text-4xl mb-5 font-serif">SocioTechnica</h1>

<article class="leading-relaxed text-lg">
  <p class="mb-5 italic">
    A <a
      class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
      href="/about">Danvers Fleury and Jess Martin</a
    > project.
  </p>
  <p class="mb-5 border px-4 py-2 rounded bg-gray-100 text-xl m-auto w-11/12 italic text-gray-800">
    We believe <span class="font-semibold">partnership between human and machine</span> is the best foundation
    to build systems that will drive humanity forward.
  </p>
  <h2 class="mb-3 font-serif text-2xl">Our Work</h2>
  <ul class="list-disc pl-10">
    <li class="mb-1">
      <a
        class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
        href="next-lx">Next LX: A Flight Simulator for Office Work</a
      >
      <span class="ml-1 text-sm italic text-gray-500">December 2024</span>
    </li>
    <li class="mb-1">
      <a
        class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
        href="simulation">The Power of Simulation-Based Training for Office Work</a
      >
      <span class="ml-1 text-sm italic text-gray-500">October 2024</span>
    </li>
    <li class="mb-1">
      <a
        class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
        href="protocols">Driving Protocol Adoption</a
      >
      <span class="ml-1 text-sm italic text-gray-500">December 2022</span>
    </li>
    <li class="mb-1">
      <a
        class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
        href="role-complexity">Roles & Organizational Complexity</a
      >
      <span class="ml-1 text-sm italic text-gray-500">November 2022</span>
    </li>
    <li class="mb-1">
      <a
        class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
        href="open-source">Sustaining Open Source Software</a
      >
      <span class="ml-1 text-sm italic text-gray-500">July 2022</span>
    </li>
  </ul>
</article>
