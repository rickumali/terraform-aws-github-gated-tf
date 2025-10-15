# Copy this file to backend.tfvars and update values as needed. Do NOT commit the real backend.tfvars to version control.
# Usage:
#   cp backend.example.tfvars backend.tfvars
#   terraform init -backend-config=backend.tfvars

bucket = "rickumali-terraform-state"
key    = "terraform-aws-github-gated-tf/terraform.tfstate"
region = "us-east-2"
# Optional: enable state locking via DynamoDB (recommended for team environments)
# dynamodb_table = "terraform-state-locks"
# encrypt = true
# acl = "bucket-owner-full-control"
# endpoint = ""
