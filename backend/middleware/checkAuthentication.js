const getSession = require("../database/redis/authentication/getSession");

async function checkAuthentication(req, res, next) {
  console.log(req.headers["authorization"]);
  const authHeaderId = req.headers["authorization"];
  let result = null;
  if (authHeaderId) {
    result = await getSession(authHeaderId);
  }
  if (result) {
    next();
  } else {
    res.status(401).send("Not Authorized!");
  }
}

module.exports = checkAuthentication;
