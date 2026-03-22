module.exports = {
  apps: [
    {
      name: "backend",
      script: "./backend/app.js",
      instances: 1,
      autorestart: true,
      watch: false
    }
  ]
};