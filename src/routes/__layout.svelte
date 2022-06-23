<script>
  import '../app.css';
</script>

<header class="mb-5 mt-5 text-left text-xl">
  <nav>
    <ul class="">
      <li class="font-semibold inline">
        <a class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700" href="/"
          >SocioTechnica</a
        >
      </li>
      <li class="inline ml-5">
        <a class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700" href="/problem"
          >Problem</a
        >
      </li>
      <li class="inline ml-5">
        <a class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700" href="/resources"
          >Resources</a
        >
      </li>
    </ul>
  </nav>
</header>

<main>
  <slot />
</main>

<footer class="mb-5 pt-5">
  <p class="text-center text-lg mb-3">
    Follow along at <a
      class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
      href="https://twitter.com/sociotechnica">@sociotechnica</a
    >.
  </p>

  <p class="text-center text-sm">A Danvers Fleury and Jess Martin project.</p>
</footer>
