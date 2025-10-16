# Copy this file to backend.tfvars and update values as needed. Do NOT commit the real backend.tfvars to version control.
# Usage:
#   cp backend.example.tfvars backend.tfvars
#   terraform init -backend-config=backend.tfvars

bucket       = "${BACKEND_BUCKET}"
key          = "${BACKEND_KEY_FILENAME}"
region       = "${BACKEND_REGION}"
use_lockfile = true
# Optional: enable state locking via DynamoDB (recommended for team environments)
# dynamodb_table = "terraform-state-locks"
# encrypt = true
# acl = "bucket-owner-full-control"
# endpoint = ""
