provider "aws" {
  region = "us-east-2"
}

# Backend configuration has been moved to an external file and should be provided
# at `terraform init` time with `-backend-config=backend.hcl`.
# Example values are in `backend.example.hcl`.
terraform {
  backend "s3" {}
}

resource "aws_budgets_budget" "zero_spend_budget" {
  name         = "ZeroSpendBudget"
  budget_type  = "COST"
  limit_amount = "0.1"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 0
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["rickumali@gmail.com"]
  }
}
