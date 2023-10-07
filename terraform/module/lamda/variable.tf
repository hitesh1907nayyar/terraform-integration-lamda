variable "function_name" {
  description = "Name of the Lambda function"
}

variable "handler" {
  description = "Lambda function handler"
}

variable "runtime" {
  description = "Lambda function runtime"
}
variable "iam_role_name" {
  description = "Name of the IAM role for Lambda execution"
}

variable "lambda_policy" {
  description = "Name of policy"
  
}
variable "lambda_code_bucket" {
  description = "Name of lamda Bucket"

}
variable "lambda_code_key" {
  description = "Name of Lamda Code Key"

}