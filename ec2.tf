# Spin Up as many ec2 instances as you want
# module "ec2_instances" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "4.3.0"
#   count   = 2

#   name = "my-ec2-cluster-${count.index}"

#   ami                    = "ami-0a709bebf4fa9246f"
#   instance_type          = "t2.micro"
#   vpc_security_group_ids      = [module.http_sg.security_group_id]
#   subnet_id                   = module.vpc.public_subnets[0]
#   associate_public_ip_address = true

#   user_data = file("init.sh")

#   tags = {
#     Terraform   = "true"
#     Environment = var.env
#   }
# }


# resource "aws_instance" "app_server" {
#   ami           = "ami-0a709bebf4fa9246f"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "mycustomawsinstance"
#   }

#   vpc_security_group_ids      = [module.http_sg.security_group_id]
#   subnet_id                   = module.vpc.public_subnets[0]
#   associate_public_ip_address = true

#   user_data = file("init.sh")
# }
