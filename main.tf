provider "aws" {
  region = "us-east-1"  # Change this to your preferred region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket"  # Change this to a globally unique name
}


# Output the bucket name
output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
