const cassandra = require("cassandra-driver");

const client = new cassandra.Client({
  contactPoints: ["127.0.0.1"], // Replace with your ScyllaDB node addresses
  localDataCenter: "datacenter1", // Replace with your ScyllaDB datacenter name
});
// Test the connection
client.connect((err) => {
  if (err) {
    console.error("Error connecting to ScyllaDB", err);
  } else {
    console.log("Connected to ScyllaDB");
  }
});

module.exports = client;
