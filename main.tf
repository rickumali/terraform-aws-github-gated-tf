provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket       = "rickumali-terraform-state"
    key          = "terraform-aws-github-gated-tf/terraform.tfstate"
    region       = "us-east-2"
    use_lockfile = true
  }
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
