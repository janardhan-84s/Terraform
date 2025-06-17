
variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "component" {
    default = "cart"
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

# the below scenario cant be work . one variable cant refer another variable in locals
/* variable "final-name" {
    default = "${var.project}-${var.environment}-${var.component}"
} */

# ec2 name = cart
# ec2 name = roboshop-dev-cart


