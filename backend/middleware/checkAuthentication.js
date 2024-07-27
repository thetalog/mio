const jwt = require("jsonwebtoken")
const getSession = require("../database/redis/authentication/getSession");

async function checkAuthentication(req, res, next) {
  const authHeaderId = req.headers["authorization"];
  let result = null;
  let decodedToken = null;
  if (authHeaderId) {
    decodedToken = req.headers["token"] ? jwt.verify(req.headers["token"], process.env.HASH_SALT) : null;
    result = await getSession(authHeaderId);
  }
  if (result && decodedToken?.user_id) {
    next();
  } else {
    if(req.url === "/authentication/signup"){
      next()
    } else {
      res.status(401).send("Not Authorized!");
    }
  }
}

module.exports = checkAuthentication;
