const redisClient = require("../redis_connection");

// Set a value in Redis
async function getSession(key) {
  // Get a value from Redis
  return await redisClient.get(key);
}

module.exports = getSession;
