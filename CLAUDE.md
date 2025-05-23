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

**Preview production build:**
```bash
npm run preview
```

## Architecture

This is an **Astro** site with React components that serves as the main website for sociotechnica.org. The site is optimized for static generation with MDX support for content-heavy pages.

**Key directories:**
- `src/pages/` - File-based routing with Astro conventions
- `src/components/` - React components
- `src/layouts/` - Astro layout components
- `public/` - Static assets (images, fonts, favicons)

**Content system:**
- Uses **MDX** for markdown pages with React component support
- Special agreement page (`/agrmt`) uses custom layout with paper texture effect
- Custom typography with Urania Czech typewriter font

**Styling:**
- **TailwindCSS** v3 with typography plugin
- Custom font integration for brand identity
- Paper texture effect for agreement page

**Deployment:**
- Automatically deploys to **Netlify** on main branch merges
- Static generation with Astro's build system
- Redirects handled via `public/_redirects`