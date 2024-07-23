const redis = require("redis");

// Create a Redis client
const client = redis.createClient();

(async () => await client.connect())();

module.exports = client;
