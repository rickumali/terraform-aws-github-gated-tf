# terraform-aws-github-gated-tf

Example project to exercise GitHub Actions deploying AWS stuff via Terraform gated by pull requests.

This is me following/expanding on:

https://playingaws.com/posts/automating-aws-resource-deployment-with-github-actions-and-terraform/

## Backend configuration

This project externalizes the Terraform S3 backend so you don't hardcode backend
values in `main.tf`. Copy the example file, update values, and pass it to
`terraform init`:

```bash
cp backend.example.tfvars backend.tfvars
# edit backend.tfvars and then
terraform init -backend-config=backend.tfvars
```

The repository ignores `backend.tfvars` so you won't accidentally commit
secrets or environment-specific configuration. Keep `backend.example.tfvars`
committed so other contributors know what keys are required.
