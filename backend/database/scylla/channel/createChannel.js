const client = require("../scylla_connection");
const { v4: uuidv4 } = require("uuid");

async function createChannel(channelName, userId, channelBio, imageStringify) {
  const channelId = uuidv4();
  const now = new Date();
  const createUser =
    "INSERT INTO mio.channel(channel_id, user_id, channelName, channelBio, imageStringify, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?)";
  client.execute(
    createUser,
    [channelId, userId, channelName, channelBio, imageStringify, now, now],
    (err) => {
      if (err) {
        console.error("Error creating user", err);
      } else {
        console.log("User created");
      }
    }
  );
}

module.exports = createChannel;
