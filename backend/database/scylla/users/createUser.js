const client = require("../scylla_connection");
const { v4: uuidv4 } = require("uuid");

async function creatUser(email, displayName, userName, dateOfBirth, password) {
  const userId = uuidv4();
  const now = new Date();
  const createUser =
    "INSERT INTO mio.users(user_id, email, displayName, userName, dateOfBirth, password, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
  client.execute(
    createUser,
    [userId, email, displayName, userName, dateOfBirth, password, now, now],
    (err) => {
      if (err) {
        console.error("Error creating user", err);
      } else {
        console.log("User created");
      }
    }
  );
}

module.exports = creatUser;
