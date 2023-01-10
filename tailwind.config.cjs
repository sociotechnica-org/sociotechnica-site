module.exports = {
  content: ['./src/**/*.{html,js,svelte,ts}'],

  theme: {
    container: {
      padding: '2rem',
    },
    extend: {
      fontFamily: {
        'typewriter': ['Urania Czech', 'monospace'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
