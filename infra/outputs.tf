output "codeconnections_connection_arn" {
  description = "ARN of the GitHub CodeConnections resource."
  value       = aws_codestarconnections_connection.github.arn
}

output "codepipeline_name" {
  description = "Name of the created CodePipeline."
  value       = aws_codepipeline.app.name
}
