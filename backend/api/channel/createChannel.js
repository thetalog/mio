const express = require("express");
const router = express.Router();
const jwt = require("jsonwebtoken")
const createChannel = require("../../database/scylla/channel/createChannel");
const uploadLogo = require("../../database/minio/channel/uploadLogo");
const multer = require('multer');

const storage = multer.memoryStorage();
const upload = multer({ storage: storage });

router.post("/create-channel",upload.single('image'), async (req, res) => {
  let user_id = null;
   if(req.headers["token"]){
  user_id =   jwt.verify(req.headers["token"], process.env.HASH_SALT)?.user_id
  } else{
    res.status(500).send("Something went wrong!")
    return
  } 
  const channelName = req.body?.channelName;
  const channelBio = req.body?.channelBio;
  const image = req.file; // Multer stores the uploaded file here
  const minioResponse = await uploadLogo("mio", jwt.verify(req.headers["token"], process.env.HASH_SALT)?.user_id, image)
  try {
    await createChannel(
      channelName,
      user_id,
      channelBio,
      minioResponse?.etag
    );
    res.status(201).send("User created");
  } catch (error) {
    console.log(error);
    res.status(500).send("Something went wrong!");
  }
});

module.exports = router;
