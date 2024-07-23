const express = require("express");
const router = express.Router();
const createUser = require("../../database/scylla/users/createUser");
const argon2 = require("argon2");

// Convert a base64 string to a Buffer
function base64ToBuffer(base64String) {
  return Buffer.from(base64String, "base64");
}

// Generate a base64-encoded salt
const saltBase64 = process.env.HASH_SALT; // Example salt (base64 encoded)

router.post("/signup", async (req, res) => {
  const userEmail = req.body?.email;
  const userPassword = req.body?.password;
  const userDisplayName = req.body?.displayName;
  const userName = req.body?.userName;
  const userDateOfBirth = req.body?.dateOfBirth;

  try {
    // Convert the base64 salt to a Buffer
    const salt = base64ToBuffer(saltBase64);

    await createUser(
      userEmail,
      userDisplayName,
      userName,
      userDateOfBirth,
      await argon2.hash(userPassword, {
        type: argon2.argon2i, // or argon2d or argon2id
        memoryCost: 16 * 1024, // Memory cost in KB (e.g., 16 MB)
        timeCost: 2, // Number of iterations
        parallelism: 4, // Number of parallel threads
        salt: salt, // Provide the custom salt
      })
    );
    res.status(201).send("User created");
  } catch (error) {
    console.log(error);
    res.status(500).send("Something went wrong!");
  }
});

module.exports = router;
