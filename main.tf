provider "aws" {
  region = var.aws_region
}
module "my_lambda" {
  source           = "./module/lamda"  # Path to the Lambda module directory
  function_name    = "my-lambda-function"
  handler          = "main.lambda_handler"
  runtime          = "python3.8"
  # filename         = "./module/lambda/lamda_function/main.zip"
  filename = "/home/neetesh/aws_poc/terraform_A/module/lamda/lamda_function/main.zip"
  iam_role_name    = "my-lambda-role"
}
