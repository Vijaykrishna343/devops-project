const express = require("express");
const path = require("path");

const app = express();

app.use(express.json());

// Serve frontend
app.use(express.static(path.join(__dirname, "../frontend/public")));

// Health route
app.get("/health", (req, res) => {
  res.json({
    status: "OK",
    time: new Date()
  });
});

// Fallback route (IMPORTANT FIX)
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "../frontend/public/index.html"));
});

const PORT = 3000;

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
});