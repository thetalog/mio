const minioClient = require("../minio_connection")

// Example: Upload a file to MinIO
const uploadFile = async (bucketName, objectName, image) => {
    return await minioClient.putObject(bucketName, objectName, image.buffer, image.size, {
      'Content-Type': image.mimetype
    });
  }

module.exports = uploadFile