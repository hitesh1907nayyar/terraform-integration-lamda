aws_region     = "ap-south-1"    
function_name    = "my-lambda-function-dev"
handler          = "main.lambda_handler"
runtime          = "python3.9"
# filename         = "./module/lambda/lambda_function/main.zip"
iam_role_name    = "my-lambda-role-test"
lambda_policy = "my-lamda-policy-test"
lambda_code_bucket = "awss3bucketuploadartifact"
lambda_code_key = "main.zip"