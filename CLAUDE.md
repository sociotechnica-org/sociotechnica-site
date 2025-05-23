# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

**Start development server:**
```bash
npm run dev
```

**Build for production:**
```bash
npm run build
```

**Type checking:**
```bash
npm run check
```

**Linting and formatting:**
```bash
npm run lint      # Check formatting and linting
npm run format    # Auto-format code
```

**Preview production build:**
```bash
npm run preview
```

## Architecture

This is a **SvelteKit** site with TypeScript that serves as the main website for sociotechnica.org. The site is optimized for content delivery with integrated Markdown support.

**Key directories:**
- `src/routes/` - File-based routing with SvelteKit conventions
- `src/lib/components/` - Reusable Svelte components
- `static/` - Static assets (images, fonts, favicons)

**Content system:**
- Uses **MDsveX** to process `.md` files as Svelte components
- Resources section has special layout handling via `_resource.svelte`
- Custom typography with Urania Czech typewriter font

**Styling:**
- **TailwindCSS** with typography plugin
- Custom font integration for brand identity
- Responsive design patterns

**Deployment:**
- Automatically deploys to **Netlify** on main branch merges
- Uses `@sveltejs/adapter-netlify` for optimized builds
- Static generation with SSG approach