

resource "aws_s3_bucket" "source" {
  bucket = "terraform-techdev"
}

resource "aws_s3_bucket_versioning" "source_versioning" {
  bucket = aws_s3_bucket.source.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "destination" {
  provider = aws.us
  bucket   = "terraform-techdev-replica"
}




resource "aws_s3_bucket_versioning" "destination_versioning" {
  provider = aws.us
  bucket   = aws_s3_bucket.destination.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_role" "replication_role" {
  name = "terraform-s3-replication-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "s3.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}


resource "aws_iam_role_policy" "replication_policy" {
  name = "terraform-s3-replication-policy"
  role = aws_iam_role.replication_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:GetReplicationConfiguration",
          "s3:ListBucket"
        ]
        Resource = [
          aws_s3_bucket.source.arn
        ]
      },
      {
        Effect = "Allow"
        Action = [
          "s3:GetObjectVersion",
          "s3:GetObjectVersionAcl"
        ]
        Resource = "${aws_s3_bucket.source.arn}/*"
      },
      {
        Effect = "Allow"
        Action = [
          "s3:ReplicateObject",
          "s3:ReplicateDelete",
          "s3:ReplicateTags"
        ]
        Resource = "${aws_s3_bucket.destination.arn}/*"
      }
    ]
  })
}


resource "aws_s3_bucket_replication_configuration" "replication" {
  bucket = aws_s3_bucket.source.id
  role   = aws_iam_role.replication_role.arn

  rules {
    id     = "ReplicateToUSEast"
    status = "Enabled"

    filter {
      prefix = "" 
    }

    destination {
      bucket        = aws_s3_bucket.destination.arn
      storage_class = "STANDARD" 
    }
  }
}
