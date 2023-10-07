terraform {
  backend "s3" {
    bucket         = var.aws_tfstate_bucket
    key            = var.aws_tfstate_filename
    region         = var.aws_region
  }
}
provider "aws" {
  region = var.aws_region
}
module "my_lambda" {
  source           = var.aws_module_source_lamda # Path to the Lambda module directory
  function_name    = var.function_name
  handler          = var.handler
  runtime          = var.runtime
  # filename = "module/lamda/lamda_function/main.zip"
  iam_role_name    = var.iam_role_name
  lambda_policy = var.lambda_policy
  lambda_code_bucket = var.lambda_code_bucket
  lambda_code_key = var.lambda_code_key
}

