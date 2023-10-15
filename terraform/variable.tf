variable "aws_region" {
  description = "The AWS region where resources will be created"
  default = "ap-south-1"
}
variable "function_name" {
  description = "Lamda function name"
  default = "my-lamda-function"
}
variable "handler" {
  description = "handler"
  default = "my-lamda-function"
  
}
variable "runtime" {
  description = "Runtime"
  default = "python3.8"
}

variable "iam_role_name" {
  description = "ima role"
  default = "my-lamda-function"
}
variable "lambda_policy" {
  description = "Lamda Policy"
  default = "my-lamda-function"
  
}
variable "lambda_code_bucket" {
  description = "Name of lamda Bucket"
  default = "my-lamda-function"

}
variable "lambda_code_key" {
  description = "Name of Lamda Code Key"
  default = "my-lamda-function"
}
variable "s3_bucket_name" {
  description = "Give s3 bucket Name"
  default = "my-lamda-function"
}
