/* ----------------------------------------
    Module Group Creation
    TF Documentation : https://registry.terraform.io/modules/terraform-google-modules/group/google/latest

   ---------------------------------------- */
locals {
  required_groups_to_create = {
    for key, value in var.group_id : key => value
  }
}



module "group" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"
  for_each = local.required_groups_to_create


  id           = "${var.group_prefix}${each.value}@${var.domain}"
  display_name = "${var.group_prefix}${each.value}"
  description  = "Google Group deployed through Terraform"
  domain       = var.domain
  owners       = var.owners
  //managers     = var.managers
  //members      = var.members
}




