const minioClient = require("./minio_connection")

const createBucketAsync = async (bucketName, region = 'us-east-1') => {
    return new Promise((resolve, reject) => {
      minioClient.makeBucket(bucketName, region, (err) => {
        if (err) {
          return reject(err);
        }
        console.log(`Bucket "${bucketName}" created successfully`);
        resolve();
      });
    });
  };
  
  const createMultipleBuckets = async () => {
    try {
      await createBucketAsync('mio');
    } catch (err) {
      console.error('Error creating buckets:', err);
    }
  };
  
  // Call the function
  createMultipleBuckets();
  