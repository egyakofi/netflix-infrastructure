##### S3 bucket
resource "aws_s3_bucket" "netflix-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My netflix bucket"
    Environment = "Dev"
  }
}
