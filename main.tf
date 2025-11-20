resource "random_id" "suffix" {
  byte_length = 2
}

resource "aws_s3_bucket" "demo" {
  bucket = "kb-demo-${terraform.workspace}-${random_id.suffix.hex}"

  tags = {
    Project = "KloudBuild"
    Environment = terraform.workspace
  }
}
