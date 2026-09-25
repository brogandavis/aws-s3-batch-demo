# AWS S3 Batch Upload Demo

Problem: Manually uploading the same file to multiple S3 buckets is slow and error-prone.

Solution: This Windows batch script uses AWS CLI to automatically upload hello.txt to 3 buckets in one command.

AWS Services Used:
- S3 (3 buckets)
- IAM (user with least-privilege s3:PutObject)
- AWS CLI

How to run:
1. aws configure
2. ./upload_hello.bat

What I learned:
- How to set up IAM permissions so the script can only upload, not delete
- How to handle errors if a bucket doesn't exist

Next: Adding CloudFront + making one bucket a static website
