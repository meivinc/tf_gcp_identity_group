
/* ----------------------------------------
    General Variable 
   ---------------------------------------- */



variable "project_id" {
  type        = string
  default     = "my-project"
  description = "Project ID for billing"
}

variable "domain" {
  type = string
  default = "mydomain.fr"
  description = "domain used for group creation"

}

/* ----------------------------------------
    group Specification
   ---------------------------------------- */

variable "group_prefix" {
  description = "Name prefix to use for group creation."
  type        = string
  default     = ""
}

variable "group_id" {
  type        = list(string)
  default     = ["group-id.groups@domain.fr"]
  description = "Group ID of the Group"
}

variable "name" {
  type        = string
  default     = "google-group-name"
  description = "Name of the Group"
}
variable "owners" {
  type        = list(string)
  default     = ["terraform-sa@domain.fr"]
  description = "Owner of the Group"
}


variable "managers" {
  type        = list(string)
  default     = [""]
  description = "Manager of the Group"
}

variable "members" {
  type        = list(string)
  default     = ["member-one@domain.fr", "member-two@domain.fr"]
  description = "Members of the Group"
}