# Terraform Infra

This folder contains a starter Terraform setup for:

- AWS CodeConnections to GitHub
- AWS CodeBuild
- AWS CodePipeline
- S3 artifact storage
- IAM roles and policies for the pipeline

## What it creates

The pipeline has two stages:

1. `Source` using GitHub through CodeConnections
2. `Build` using CodeBuild and the repository root `buildspec.yml`

## Usage

```bash
cd infra
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply
```

## Required values

Edit `terraform.tfvars` and set:

- `project_name`
- `github_full_repository_id`
- `artifact_bucket_name`
- `aws_region`

## Important GitHub connection note

Terraform can create the CodeConnections resource, but for GitHub it will remain pending until you complete the authorization in the AWS console.

After `terraform apply`, go to:

`AWS Console -> Developer Tools -> Settings -> Connections`

Open the created connection and complete the GitHub authorization so the status becomes `AVAILABLE`.
