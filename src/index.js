const express = require("express");
const cors = require("cors");

const app = express();
app.use(
  cors({
    origin: "*",
  })
);
app.use(express.json());
app.listen(3000, () => {
  console.log("Maratona Full Cycle 2.0!!");
});
