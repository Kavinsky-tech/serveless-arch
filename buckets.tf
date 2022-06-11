resource "aws_s3_bucket" "original_files" {
  bucket = "original-files-example"

  tags = {
    Name        = "original-files"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "original_files" {
  bucket = aws_s3_bucket.original_files.id
  acl    = "private"
}

resource "aws_s3_bucket" "converted_files" {
  bucket = "converted-files-example"

  tags = {
    Name        = "converted-files"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "converted_files" {
  bucket = aws_s3_bucket.converted_files.id
  acl    = "private"
}