const redisClient = require("../redis_connection");

// Set a value in Redis
async function storeSession(key, value) {
  return await redisClient.set(key, value);
}

module.exports = storeSession;
