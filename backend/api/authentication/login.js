const express = require("express");
const router = express.Router();
const {
  retrieveSingleUser,
} = require("../../database/scylla/users/retrieveUser");
const storeSession = require("../../database/redis/authentication/storeSession");
const getSession = require("../../database/redis/authentication/getSession");
const argon2 = require("argon2");
const crypto = require("crypto");

function daysFromEpochUntilToday() {
  // Unix epoch start date
  const epochStart = new Date("1970-01-01T00:00:00Z");

  // Get the current date
  const today = new Date();

  // Calculate the difference in time
  const diffInTime = today - epochStart; // Difference in milliseconds

  // Convert time difference from milliseconds to days
  const diffInDays = Math.floor(diffInTime / (1000 * 60 * 60 * 24)); // Convert to days

  return diffInDays;
}

function generateUUIDFromEmail(email) {
  // Create a hash from the input email + epochToTillToday
  const hash = crypto
    .createHash("sha1")
    .update(email + daysFromEpochUntilToday())
    .digest("hex");

  // Format the hash to resemble a UUID (8-4-4-4-12 format)
  const uuid = [
    hash.substring(0, 8),
    hash.substring(8, 12),
    hash.substring(12, 16),
    hash.substring(16, 20),
    hash.substring(20, 32),
  ].join("-");

  return uuid;
}

async function getUserLocation(ip) {
  if (!ip) return false;
  const response = await fetch(
    `https://ipinfo.io/${ip}/json?token=${process.env.IPINFO_TOKEN}`
  );
  const data = await response.json();
  return data;
}

router.post("/login", async (req, res) => {
  const authHeaderId = req.headers["authorization"];
  if (authHeaderId) {
    const result = await getSession(authHeaderId);
    if (result) {
      res.status(200).send("Authorized!");
      return;
    } else {
      res.status(401).send("Unauthorized!");
      return;
    }
  }

  const ip =
    req?.headers["x-forwarded-for"] || req?.socket?.remoteAddress || null;
  //   await getUserLocation(ip);
  if (req.body?.email && req.body?.password) {
    const user = await retrieveSingleUser(req.body?.email);
    if (user) {
      const result = await argon2.verify(user?.password, req.body?.password);
      if (result) {
        const uniqueSessionId = generateUUIDFromEmail(user?.email);
        await storeSession(uniqueSessionId, user?.email);
        res.status(200).send(uniqueSessionId);
        return;
      } else {
        res.status(401).send("User unauthorized!");
        return;
      }
    }
  } else {
    res.status(401).send("User unauthorized!");
  }
});

module.exports = router;
