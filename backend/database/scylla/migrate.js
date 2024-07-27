const client = require("./scylla_connection");

const createKeyspaceQuery =
  "CREATE KEYSPACE IF NOT EXISTS mio WITH replication = { 'class': 'SimpleStrategy', 'replication_factor': 1};";

const useKeyspace = "USE mio;";

const createUserTableQuery =
  "CREATE TABLE IF NOT EXISTS users (user_id UUID PRIMARY KEY, email TEXT, displayName TEXT, userName TEXT, dateOfBirth TEXT, password TEXT, created_at TIMESTAMP, updated_at TIMESTAMP);";

const createChannelTableQuery =
  "CREATE TABLE IF NOT EXISTS channel (channel_id UUID PRIMARY KEY, user_id UUID, channelName TEXT, channelBio TEXT, created_at TIMESTAMP, updated_at TIMESTAMP);";

async function migrate_scylla() {
  try {
    await client.execute(createKeyspaceQuery);
    await client.execute(useKeyspace);
    await client.execute(createUserTableQuery);
    await client.execute(createChannelTableQuery);
    console.log("Migration Done!");
  } catch (error) {
    console.log("Error while migrate: ", error);
  }

  process.exit();
}

migrate_scylla();
