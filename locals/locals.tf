# In this script we can assign variables and functions in locals
locals {
  fina_name = "${var.project}-${var.environment}-${var.component}"
  ec2_tags = merge(
    var.common_tags,
    {
        environment = "dev",
        version = "1.0"
    }
  )
}


