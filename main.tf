provider "aws" {
  region = var.aws_region
}
module "my_lambda" {
  source           = "./module/lamda"  # Path to the Lambda module directory
  function_name    = var.function_name
  handler          = var.handler
  runtime          = var.runtime
  filename = "module/lamda/lamda_function/main.zip"
  iam_role_name    = var.iam_role_name
}
