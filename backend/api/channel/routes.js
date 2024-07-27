const express = require("express");
const router = express.Router();

const createChannel = require("./createChannel")

router.use("/channel", createChannel);

module.exports = router;
