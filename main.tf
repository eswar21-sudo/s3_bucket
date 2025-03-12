provider "aws" {
  region = "us-east-2"  # Change this to your preferred region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "keswar01"  # Change this to a globally unique name
}

# Optional: Enable versioning
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}

# Output the bucket name
output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
