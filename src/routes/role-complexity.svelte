<script>
  import SvelteMarkdown from 'svelte-markdown';
  const source = `

We believe that all work takes place within nested levels of complexity. We define the levels as follows:

- **Task** - Working on a single, discrete task at a time. This could be as simple as digging a ditch or as complex as performing brain surgery.
- **Project** - Creating and curating a group of tasks in order to accomplish a stated goal.
- **Program** - Owning a high-level objective, dividing that objective into projects that work together towards its completion.
- **Enterprise** - Setting high-level objectives, assigning the objectives to programs designed to mutually reinforce success.
- **Conglomerate** - Assembling a set of enterprises to ...
- **Industry** - ???
- **Economy** - ???
- **Planet** - ???
- **Universe** - ??? Philosophy? Theology? 

We tend to gravitate to a single "level" where we enjoy the work and are most effective. In many cases, we are still _able_ to work at the levels adjacent to our primary level, though we may feel less effective and find the work less joyful.

It may help to visualize the levels as nested. Here's a visualization of Task through Enterprise: 
[![Task Through Enterprise Levels](/task-through-enterprise.png)](/task-through-enterprise.png)

To visualize all of the levels of nesting would require an incredibly complex diagram. But that's the point; individuals rarely think about _all_ of the levels simultaneously. Most individuals focus on their level, and perhaps the two levels adacent to theirs. Within an actual enterprise, a visibility diagram for a project manager might look more like this:
[![Project Manager Level View](/pm-level-view.png)](pm-level-view.png)

A project-level worker would be aware of the tasks occuring within their project, though they may be unable to actually execute on the majority of them. They would also have awareness and understanding of the Projects _around_ them, within their Program. Their awareness of how the various Projects interact to serve the needs of the next level up, the Program, would be less obvious. They would have only a vague awareness of the various Programs in the Enterprise.

[![Levels](/level-scale.png)](/level-scale.png)

Another way to think of the differences between the levels is in terms of **Concreteness versus Abstraction**. Task-level work tends to be highly **Concrete**, whereas Planet and Universe-level work is extraordinarily **Abstract**. Consider how the term "[galaxy brain](https://knowyourmeme.com/memes/galaxy-brain)" is used to describe particularly obtuse and world-changing thoughts.



# Q&A

## Can I learn to operate at a different level?

You may be rebelling against this idea due to an apparent conflict with [Dweck's concept of a growth mindset](https://en.wikipedia.org/wiki/Mindset#Fixed_and_growth_mindset). The levels are not about growth, more about personality: what kind of work do I like doing?  Growth can always occur in the ability to execute within our preferred level.

## What about spanning multiple levels?

In terms of "spanning" multiple levels, we've discovered the following through trial-and-error:

- we can work effectively 1 level away from our core level. 
- we can understand the work done 2 levels away, though we really struggle to do it and would likely fail if that was our full-time job.
- 3 levels away is almost incomprehensible.

That said, some individuals find they have two preferred levels with a large gap in-between. For example, a 

`;
</script>

<svelte:head>
  <title>About Us | SocioTechnica</title>
</svelte:head>

<h1 class="font-serif text-4xl mb-4">Role Complexity</h1>

<article class="prose">
  <SvelteMarkdown {source} />
</article>
