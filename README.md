# terraform-aws-github-gated-tf

Example project to exercise GitHub Actions deploying AWS stuff via Terraform gated by pull requests.

This is me following/expanding on:

https://playingaws.com/posts/automating-aws-resource-deployment-with-github-actions-and-terraform/

## Backend configuration

This project externalizes the Terraform S3 backend so you don't hardcode backend
values in `main.tf`. Copy the example file, update values, and pass it to
`terraform init`:

```bash
cp backend.example.hcl backend.hcl
# edit backend.hcl and then
terraform init -backend-config=backend.hcl
```

Alternatively, you can use bring in the values using environment variables of
the same name, and then using `envsubst`, as follows:

```bash
envsubst < backend.example.hcl > backend.hcl
terraform init -backend-config=backend.hcl
```

The repository ignores `backend.hcl` so you won't accidentally commit
secrets or environment-specific configuration. Keep `backend.example.hcl`
committed so other contributors know what keys are required.
