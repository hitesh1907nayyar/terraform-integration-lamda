resource "aws_iam_role" "lambda_execution_role" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}
resource "aws_iam_policy_attachment" "lambda_policy" {
  name       = var.lambda_policy
  policy_arn = aws_iam_policy.lambda_policy.arn
  roles      = [aws_iam_role.lambda_execution_role.name]
}
resource "aws_iam_policy" "lambda_policy" {
  name        = var.lambda_policy
  description = "Allow Lambda to access necessary resources"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        Effect   = "Allow",
        Resource = "arn:aws:logs:*:*:*"
      }
    ]
  })
}
resource "aws_lambda_function" "example_lambda" {
  function_name = var.function_name
  handler      = var.handler
  runtime      = var.runtime
  # filename     = var.filename
  role         = aws_iam_role.lambda_execution_role.arn # Assign the IAM role here
  s3_bucket = var.lambda_code_bucket
  s3_key = var.lambda_code_key
  source_code_hash = filebase64sha256(var.lambda_code_key)
}
