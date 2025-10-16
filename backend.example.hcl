# Copy this file to backend.hcl and update values as needed. 
# Do NOT commit the real backend.hcl to version control.
# Usage:
#   cp backend.example.hcl backend.hcl
#   terraform init -backend-config=backend.hcl

bucket       = "${BACKEND_BUCKET}"
key          = "${BACKEND_KEY_FILENAME}"
region       = "${BACKEND_REGION}"
use_lockfile = true
