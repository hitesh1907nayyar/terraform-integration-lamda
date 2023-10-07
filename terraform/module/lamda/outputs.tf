output "lambda_function_arn" {
  description = "ARN of the created Lambda function"
  value       = aws_lambda_function.example_lambda.arn
}

