/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      fontFamily: {
        'urania': ['Urania Czech', 'monospace'],
        'typewriter': ['Urania Czech', 'monospace'],
      },
      typography: {
        DEFAULT: {
          css: {
            'a': {
              'color': 'inherit',
              'text-decoration': 'none',
              'border-bottom': '2px solid #e5e7eb',
              'font-weight': 'inherit',
              '&:hover': {
                'color': '#a16207',
                'border-bottom-color': '#a16207',
              },
            },
          },
        },
      },
    },
  },
  plugins: [require('@tailwindcss/typography')],
}