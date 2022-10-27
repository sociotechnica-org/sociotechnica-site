<h1 class="text-center text-4xl mb-5">Open Source's Resourcing Problem</h1>

<div class="p-5 border-2 bg-slate-100">
  <p class="italic text-neutral-600">
    <b class="font-semibold">Work in Progress:</b> These are a set of working notes about the problem
    of creating sustainable ecosystems for resourcing the creation and maintenance of software systems.
  </p>
</div>

<article class="prose lg:prose-lg">
  <ul>
    <li>
      Software is eating the world, which is to say, software is becoming an ever-increasing part of
      everyday life.
      <ul>
        <li>
          Software has become "core infrastructure" that we rely on like we rely on running water
          and electricity.
        </li>
      </ul>
    </li>
    <li>
      Software exists in several layers:
      <ul>
        <li>Protocols</li>
        <li>Languages</li>
        <li>Libraries</li>
        <li>Platforms</li>
        <li>Products</li>
        <li>Services</li>
      </ul>
    </li>
    <li>
      Each layer is built on the layer above it, with some interesting edge cases
      <ul><li>Like any taxonomy, this taxonomy is imperfect.</li></ul>
    </li>
    <li>
      There are strong economic models that currently exist for building Platforms, Products, and
      Services.
      <ul><li>Easy to make money building these things.</li></ul>
    </li>
    <li>
      There is no strong economic model for sustainably resourcing the development of Libraries and
      Protocols.
      <ul>
        <li>
          <a
            href="bear://x-callback-url/open-note?title=Sustainability%20and%20Maintaining%20Systems&x-error=bear%3A%2F%2Fx%2Dcallback%2Durl%2Fcreate%3Ftitle%3DSustainability%2520and%2520Maintaining%2520Systems"
            >Sustainability and Maintaining Systems</a
          >
        </li>
      </ul>
    </li>
    <li>
      Problem: Platforms, Products, and Services are built atop Libraries and Protocols.
      <ul>
        <li>
          This creates an "unsteady foundation" where Libraries and Protocols are not adequately
          supported, causing the upper layers to fail.
        </li>
        <li>
          There is also tremendous waste in building the upper layers since Libraries and Protocols
          are not being optimally developed and maintained, causing churn-having to be rebuilt due
          to abandonment.
        </li>
        <li>
          Tremendous leverage at lower layers! Yet no strong economic model for developing them, so
          that leverage is wasted.
          <ul>
            <li>
              Each layer has potentially an order of magnitude of impact to the layer above it.
              <ul>
                <li>
                  a single protocol can support 10x as many libraries. a single library can support
                  10x as many platforms, and so forth.
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </li>
    <li>
      Traditional solutions to this problem have involved licensing the software itself, which
      assumes that the point of leverage is literally the source code that is produced.
      <ul>
        <li>
          This is a naive and unhelpful view of code/programs. The source only is effective within
          the context of a living system. Extracted from the system it has little to no value.
        </li>
        <li>The bits are not the value!</li>
      </ul>
    </li>
    <li>
      It turns out, the rival, non-fungible good is actually <i>developer time</i> to build and
      maintain open source software!
      <ul>
        <li>
          We should focus on models that properly incentivize the deployment of <i>developer time</i
          >.
        </li>
      </ul>
    </li>
    <li>
      The other challenge is <i>coordination</i>.
      <ul>
        <li>
          Occasionally a library is maintained principally by a single maintainer with little
          assistance from the community
        </li>
        <li>
          Most often libraries and protocols are actually a network or community who each play
          different roles in the maintenance and extension of that resource.
        </li>
        <li>
          The mechanisms we have for coordinating groups of developers and community members are
          immature and poorly understood.
          <ul>
            <li>
              The most obvious organizing mechanism for the creation of software is the corporation.
              However, for the sake of resiliency and anti-fragility, it's preferable to have
              developers from multiple organizations all working on the project, together.
            </li>
            <li>
              Another mechanism is the "core maintainer group." This mechanism is widely used, but
              also poorly documented and understood.
            </li>
            <li>
              A final mechanism frequently used is the open source foundation. I don't know that
              much about how foundations work, how successful they have been, etc.
            </li>
          </ul>
        </li>
        <li>
          An emerging model worth exploring is the <a
            href="bear://x-callback-url/open-note?title=Networked%20Organization&x-error=bear%3A%2F%2Fx%2Dcallback%2Durl%2Fcreate%3Ftitle%3DNetworked%2520Organization"
            >Networked Organization</a
          >, which can be thought of as applying some of the principles of decentralization a la
          software to the corporation itself.
        </li>
      </ul>
    </li>
  </ul>
</article>
