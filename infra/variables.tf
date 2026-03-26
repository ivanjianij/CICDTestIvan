variable "aws_region" {
  description = "AWS region where the pipeline resources will be created."
  type        = string
  default     = "ap-southeast-2"
}

variable "project_name" {
  description = "Project name prefix used in resource names."
  type        = string
}

variable "github_full_repository_id" {
  description = "GitHub repository in owner/repo format."
  type        = string
}

variable "github_branch" {
  description = "Git branch watched by CodePipeline."
  type        = string
  default     = "main"
}

variable "artifact_bucket_name" {
  description = "Globally unique S3 bucket name for CodePipeline artifacts."
  type        = string
}

variable "tags" {
  description = "Optional tags applied to supported resources."
  type        = map(string)
  default     = {}
}
