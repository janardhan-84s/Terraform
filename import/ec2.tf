# Infra is created manually then we can manage with terraform

resource "aws_instance" "linux" {

}

# resource "aws_instance" "linux" {
#   ami = "ami-09c813fb71547fc4f" # give ur ami id
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-035143f391bb55883"]

#   tags = {
#     Name = "linux-change"
#   }
# }

