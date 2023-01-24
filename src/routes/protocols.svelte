<script>
  import SvelteMarkdown from 'svelte-markdown';
  const source = `

- A protocol wins if it gets adopted, where adoption is a large number of people using the protocol on a daily basis (DAUs).
- In order to gain widespread adoption, the protocol needs to be in use in a few popular applications.
	- In practice, protocol usage will be dominated by a few major applications or platforms.
	- In general, developers won't adopt a brand-new protocol until it has already shown proof of adoption.
	- Protocols need the evolutionary pressures of real-world usage to shape them into usefulness.
- To get to the few popular applications that will drive the majority of the usage, you need lots of applications. Why?
	- It's impossible to predict in advance which applications will drive the most usage.
	- The "latent space" or "possibility space" of a new protocol is unknown and can only be discovered through exploration.
- In order to efficiently explore the possibility space looking for hits, it's important to apply portfolio thinking.
	- Exploration needs to begin by emphasizing diversity and randomness, while taking into account "hunches" based on current understanding.
	- As attempts are made to build applications, new information is learned about the shape of the possible, and should be used to inform next explorations.
- Brand-new protocols often suffer from a "cold start problem" before network effects start to kick in. Tactically, there are several ways a protocol could overcome this:
	- Give seed funding to startups using the protocol ([RedwoodJS Startup Fund](https://tom.preston-werner.com/2022/04/04/redwood-v1-and-funding.html), some FileCoin grants).
	- Internally incubate applications.
	- Commons Funding.
	- Start a movement and invite others into it.
- Adoption is also enabled and accelerated, but not caused, by best practices in DevRel:
	- Documentation needs to be top-notch.
	- "Getting started" experience needs to be optimized to speed up first-time usage.
	- Where to ask questions needs to be obvious and someone's dedicated responsibility.
`;
</script>

<svelte:head>
  <title>Protocol Adoption | SocioTechnica</title>
</svelte:head>

<h1 class="font-serif text-4xl mb-4">Driving Protocol Adoption</h1>

<div class="italic mb-4 text-sm text-gray-600">Drafting December 2022</div>

<div class="p-5 mb-5 border-2 bg-slate-100">
  <p class="italic text-neutral-600">
    <b class="font-semibold">Work in Progress:</b> These are a set of working notes about how to drive
    adoption of new protocols.
  </p>
</div>

<article class="prose">
  <SvelteMarkdown {source} />
</article>
