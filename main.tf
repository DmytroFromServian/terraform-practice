provider "aws" {
  region = var.region
}


module "autoscaling_example_complete" {
  source  = "terraform-aws-modules/autoscaling/aws//examples/complete"
  version = "6.10.0"
}