## OVERVIEW OF VARIABLES IN TERRAFORM ##

Definition : In Terraform, variables are placeholders for values that make your      infrastructure code   reusable, flexible, and easier to manage.
   Instead of hardcoding things like instance types, regions, or IP addresses, you define variables and assign values to them. This way, you can use the same configuration across different environments just by changing the variable values

# syntax: 
             variable "name of variable" {
               type=string/number/charcter
               default = "value"
               description = you want
              }

---> When you refer variables into another code you can mention "var.name"

---> The below are the types of variables in Terraform.

     1.variable file : We are mentioning in seperate folder to access them from 
                       code referred as "var.name"

     2.terraform.tfvars :Accessing the variables from this file"terraform.tfvars"
                         It will override the variables from "variable-file"

     3.Command Line : For overriding a value in variable we can use this.

      syntax: terraform plan_var "sg_name=cmd_allow_all"

     4. Environment variables : To set the dynamic values into your configfuration without
                                hardcoring them.

         syntax:setting : export TF_VAR_SG_NAME= env_allow_all
              unsetting : unset TF_VAR_SG_NAME

     5.Default values : We are giving default values to variables then it is only picking 
                        up them from "Variables.tf" file

     6. User prompt : while executing we are giving the values.

        Example: give below like this variables.tf file
            variable "region" {
               type        = string
               description = "Enter the AWS region to deploy resources"
            }

---> Variables order of preferences:

     1. Command line
     2. tf vars
     3. ENV variables
     4. default values
     5. user prompt


