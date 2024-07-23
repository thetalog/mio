const client = require("../scylla_connection");

async function retrieveSingleUser(email) {
  const retrieveUserQuery =
    "SELECT email, password from mio.users WHERE email = ? ALLOW FILTERING;";
  try {
    const result = await client.execute(retrieveUserQuery, [email]);
    // Check if any rows were returned
    if (result.rowLength > 0) {
      return result.rows[0];
    } else {
      console.log("No user found with the provided email.");
      return null;
    }
  } catch (err) {
    console.error("Error retrieving user:", err);
    throw err; // Re-throw error to be handled by caller
  }
}

module.exports = { retrieveSingleUser };
