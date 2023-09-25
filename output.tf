/*

Output Of the terraform file

*/


# output "Created_groups"{
#     description = "group creation"
#     # value       = { for vm in (var.group_id) : vm => module.group[vm].display_name }
#     value = var.group_id

# }

output "Created_groups"{
    description = "group creation"
    value       =  module.group[*]
    }


