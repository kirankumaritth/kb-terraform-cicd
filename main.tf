resource "aws_s3_bucket" "demo" {
  bucket = "kb-demo-${terraform.workspace}-${random_id.suffix.hex}"

  tags = {
    Project = "KloudBuild"
    Env     = terraform.workspace
  }
}

resource "random_id" "suffix" {
  byte_length = 2
}
