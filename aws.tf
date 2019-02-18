# From https://www.terraform.io/docs/providers/aws/index.html
#
# You can provide your credentials via the AWS_ACCESS_KEY_ID and
# AWS_SECRET_ACCESS_KEY, environment variables, representing your AWS Access Key
# and AWS Secret Key, respectively. Note that setting your AWS credentials using
# either these (or legacy) environment variables will override the use of
# AWS_SHARED_CREDENTIALS_FILE and AWS_PROFILE. The AWS_DEFAULT_REGION and
# AWS_SESSION_TOKEN environment variables are also used, if applicable:

provider "aws" {
  version = "~> 1.43"

  # Hosting in Frankfurt
  region = "eu-central-1"
}
