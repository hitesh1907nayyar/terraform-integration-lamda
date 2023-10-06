variable "function_name" {
  description = "Name of the Lambda function"
}

variable "handler" {
  description = "Lambda function handler"
}

variable "runtime" {
  description = "Lambda function runtime"
}

variable "filename" {
  description = "Path to the Lambda function code package (ZIP or folder)"
}

variable "iam_role_name" {
  description = "Name of the IAM role for Lambda execution"
}

variable "lambda_policy" {
  description = "Name of policy"
  
}