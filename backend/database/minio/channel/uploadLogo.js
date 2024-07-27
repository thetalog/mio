const minioClient = require("../minio_connection")

// Example: Upload a file to MinIO
const uploadFile = (bucketName, objectName, filePath) => {
    minioClient.fPutObject(bucketName, objectName, filePath, (err, etag) => {
      if (err) {
        return console.log('Error uploading file:', err);
      }
      console.log('File uploaded successfully:', etag);
    });
  };

module.exports = uploadFile