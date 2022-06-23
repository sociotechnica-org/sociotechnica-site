<script>
  import '../app.css';
</script>

<header class="mb-5 mt-5 text-left">
  <nav>
    <ul class="">
      <li class="font-semibold inline"><a href="/">SocioTechnica</a></li>
      <li class="inline ml-5"><a href="/problem">Problem</a></li>
      <li class="inline ml-5"><a href="/resources">Resources</a></li>
    </ul>
  </nav>
</header>

<main>
  <slot />
</main>

<footer class="mb-5">
  <p class="text-center text-sm pt-5">A Danvers Fleury and Jess Martin project.</p>
</footer>
