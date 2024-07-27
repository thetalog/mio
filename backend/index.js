const express = require("express");
const app = express();
const cors = require("cors");

PORT = 3333;

const checkAuthentication = require("./middleware/checkAuthentication");
const authentication = require("./api/authentication/routes");
const channel = require("./api/channel/routes");

app.use(cors());
app.use(express.json());

app.use(checkAuthentication);
app.use("/api/v1", authentication, channel);

app.listen(PORT, () => {
  console.log(`Backend running on ${PORT}! 🔥`);
});
