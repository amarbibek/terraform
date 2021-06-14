provider "aws" {
  region = "us-east-1" 
}

# creating s3 bucket
resource "aws_s3_bucket" "bibek_s3_bucket" {
    bucket = "bibek-s3-bucket"
    versioning {
      enabled = true
    }
}
# plan
# terraform plan

# save plan to file
# terramform plan -out iam.tfplan

# execute plan from plan file
# terramform apply "iam.tfplan"

#execute
# terraform apply

# this is to check output
# terraform apply -refresh=false

# to output on colsole
output "bibek_s3_bucket_versioning" {
    value = aws_s3_bucket.bibek_s3_bucket.versioning[0].enabled  
}

output "bibek_s3_bucket_complete_details" {
    value = aws_s3_bucket.bibek_s3_bucket
}

# creating IAM user
resource "aws_iam_user" "bibek_iam_user" {
  name = "bibek-iam-user"
}

output "bibek_iam_user_complete_details" {
    value = aws_iam_user.bibek_iam_user
}

# get console
# terraform console(enter)
# aws_iam_user.bibek_iam_user(enter)