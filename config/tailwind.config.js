module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/models/**/**/*.rb",
    "./app/models/**/*.rb",
    "./app/models/*.rb",
    "./app/components/*.rb",
    "./app/components/**/*.rb",
    "./app/components/*.erb",
    "./app/components/**/*.erb",
  ],
  theme: {
    data: {
      active: 'ui~="active"',
    },
    extend: {
      blur: {
        xs: "2px",
      },
      backdropBlur: {
        xs: "2px",
      },
      fontFamily: {
        dancing: ["Dancing Script", "cursive"],
      },
      fontSize: {
        "2xs": ["0.625rem", "0.9rem"],
      },
      animation: {
        fadeIn: "fadeIn 0.5s ease-in-out",
        fadeOut: "fadeOut 0.5s ease-in-out",
      },
      keyframes: {
        fadeIn: {
          "0%": { opacity: 0 },
          "100%": { opacity: 1 },
        },
        fadeOut: {
          "0%": { opacity: 1 },
          "100%": { opacity: 0 },
        },
      },
    },
  },
};
