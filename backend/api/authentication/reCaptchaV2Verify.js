const { default: axios } = require("axios");
const express = require("express");
const router = express.Router();

router.post("/recaptcha-v2-verify", async (req, res) => {
  const reCaptchaV2Token = req.headers["recaptcha-v2-token"];
  if (reCaptchaV2Token) {
    const reCaptchaVerifyUrl =
      "https://www.google.com/recaptcha/api/siteverify";
    try {
      const response = await axios.post(
        reCaptchaVerifyUrl,
        {},
        {
          params: {
            secret: "6LdfxRYqAAAAAHLK3LlLM-TpUxAksjRNo1i-T_rr",
            response: reCaptchaV2Token,
          },
        }
      );
      if (response?.data?.success) {
        res.status(200).send("Captcha V2 Verified!");
        return;
      } else {
        res.status(401).send("Captcha V2 Failed!");
        return;
      }
    } catch (error) {
      res.status(500).send("Something went wrong!");
    }
  } else {
    res.status(500).send("Something went wrong!");
  }
});

module.exports = router;
