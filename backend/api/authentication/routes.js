const express = require("express");
const router = express.Router();

const signup = require("./signup");
const login = require("./login");
const reCaptchaVerify = require("./reCaptchaV2Verify");

router.use("/authentication", signup, login, reCaptchaVerify);

module.exports = router;
