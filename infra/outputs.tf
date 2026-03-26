output "codeconnections_connection_arn" {
  description = "ARN of the GitHub CodeConnections resource."
  value       = aws_codestarconnections_connection.github.arn
}

output "codepipeline_name" {
  description = "Name of the created CodePipeline."
  value       = aws_codepipeline.app.name
}

output "codedeploy_application_name" {
  description = "Name of the CodeDeploy application."
  value       = aws_codedeploy_app.app.name
}

output "codedeploy_deployment_group_name" {
  description = "Name of the CodeDeploy deployment group."
  value       = aws_codedeploy_deployment_group.app.deployment_group_name
}

output "application_server_public_ip" {
  description = "Public IP of the EC2 instance receiving deployments."
  value       = aws_instance.app.public_ip
}
