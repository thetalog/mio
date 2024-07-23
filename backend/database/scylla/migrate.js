const client = require("./scylla_connection");

const createKeyspaceQuery =
  "CREATE KEYSPACE IF NOT EXISTS mio WITH replication = { 'class': 'NetworkTopologyStrategy', 'replication_factor': 3};";

const useKeyspace = "USE mio;";

const createUserTableQuery =
  "CREATE TABLE IF NOT EXISTS users (user_id UUID PRIMARY KEY, email TEXT, displayName TEXT, userName TEXT, dateOfBirth TEXT, password TEXT, created_at TIMESTAMP, updated_at TIMESTAMP);";

async function migrate_scylla() {
  try {
    await client.execute(createKeyspaceQuery);
    await client.execute(useKeyspace);
    await client.execute(createUserTableQuery);
    console.log("Migration Done!");
  } catch (error) {
    console.log("Error while migrate: ", error);
  }

  process.exit();
}

migrate_scylla();
