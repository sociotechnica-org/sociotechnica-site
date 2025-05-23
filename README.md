# SocioTechnica - Astro Site

This is the Astro + React version of the SocioTechnica website, migrated from SvelteKit.

## 🚀 Project Structure

```text
/
├── public/             # Static assets (images, fonts, favicons)
│   ├── fonts/         # Urania Czech typewriter font
│   └── _redirects     # Netlify redirects
├── src/
│   ├── components/    # React components
│   │   └── VideoRenderer.tsx
│   ├── layouts/       # Astro layouts
│   │   ├── Layout.astro          # Main layout
│   │   └── AgreementLayout.astro # Special layout for agreement page
│   ├── pages/         # All site pages
│   │   ├── index.astro           # Home page
│   │   ├── about.astro           # About page
│   │   ├── work-with-us.astro    # Work With Us page
│   │   ├── agrmt.astro           # Agreement page (with paper texture)
│   │   ├── q1-2025-update.mdx    # Q1 2025 Update (MDX)
│   │   ├── next-lx.astro         # Next LX project
│   │   ├── simulation.mdx        # Simulation training (MDX)
│   │   ├── protocols.mdx         # Protocol adoption (MDX)
│   │   ├── role-complexity.mdx   # Role complexity (MDX)
│   │   └── open-source/          # Open source pages
│   └── styles/        # Global styles
│       └── global.css # Tailwind imports + custom styles
├── astro.config.mjs   # Astro configuration
├── tailwind.config.cjs # Tailwind configuration
├── netlify.toml       # Netlify deployment config
└── package.json
```

## 🧞 Commands

All commands are run from the root of the astro-site directory:

| Command           | Action                                           |
| :---------------- | :----------------------------------------------- |
| `npm install`     | Installs dependencies                            |
| `npm run dev`     | Starts local dev server at `localhost:4321`      |
| `npm run build`   | Build your production site to `./dist/`          |
| `npm run preview` | Preview your build locally, before deploying     |
| `npm run check`   | Type check and verify the project builds         |

## 🎨 Features

- **Astro** with static site generation
- **React** for interactive components
- **Tailwind CSS** for styling
- **MDX** support for content-heavy pages
- **Custom typography** with Urania Czech font for the agreement page
- **Paper texture effect** for special pages
- **Netlify-ready** deployment configuration

## 🚀 Deployment

This site is configured for Netlify deployment:

1. Connect your GitHub repository to Netlify
2. Set build command: `npm run build`
3. Set publish directory: `dist`
4. Deploy!

The `netlify.toml` file is already configured with the correct settings.

## 📝 Notes

- The agreement page (`/agrmt`) uses a special layout with paper texture and typewriter font
- MDX pages support React components for enhanced content
- All redirects are handled via the `public/_redirects` file
- The site maintains the exact same design and functionality as the original SvelteKit version