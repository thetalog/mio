const express = require("express");
const router = express.Router();
const jwt = require("jsonwebtoken")
const createChannel = require("../../database/scylla/channel/createChannel");

// Generate a base64-encoded salt
const saltBase64 = process.env.HASH_SALT; // Example salt (base64 encoded)

router.post("/create-channel", async (req, res) => {
  const user_id = req.headers["token"] ? jwt.verify(req.headers["token"], process.env.HASH_SALT)?.user_id : res.status(500).send("Something went wrong!")
  const channelName = req.body?.channelName;
  const channelBio = req.body?.channelBio;
  try {
    await createChannel(
      channelName,
      user_id,
      channelBio,
    );
    res.status(201).send("User created");
  } catch (error) {
    console.log(error);
    res.status(500).send("Something went wrong!");
  }
});

module.exports = router;
