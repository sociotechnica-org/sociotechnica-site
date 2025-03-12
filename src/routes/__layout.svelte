<script>
  import '../app.css';
</script>

<header class="mb-5 mt-5 text-left">
  <nav>
    <ul class="">
      <li class="font-medium inline">
        <a class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700" href="/"
          >SocioTechnica</a
        >
      </li>
      <li class="inline ml-5">
        <a class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700" href="/about"
          >About</a
        >
      </li>
      <li class="inline ml-5">
        <a class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700" href="/projects"
          >Projects</a
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
    <img src="/bluesky-logo.png" alt="bluesky-logo" class="w-5 h-5 inline-block" />
    Follow along at
    <a
      class="hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
      href="https://bsky.app/profile/sociotechnica.org"
    >
      @sociotechnica</a
    >.
  </p>

  <p class="text-center text-sm">
    A <a
      class="border-b-2 hover:border-b-2 hover:border-yellow-700 hover:text-yellow-700"
      href="/about"
    >
      Danvers Fleury and Jess Martin</a
    > project.
  </p>
</footer>
