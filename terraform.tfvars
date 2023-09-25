# Group containing Authorization for creating groups on Admin.groups gcp 
# Require Cloud Identity API enabled
project_id = "my-project"

// format = "domain.net"
domain = "domain.fr"


// Optional 
group_prefix = "meivin-"

// Name of the owner for all the created account
owners = ["terraform-sa@domain.fr"]

group_id = [
    "gcp-billing-admins",
    "gcp-billing-data-users",
    "gcp-devops",
    "gcp-logging-admins",
    "gcp-logging-viewers",
    "gcp-monitoring-admins",
    "gcp-network-admins",
    "gcp-organization-admins",
    "gcp-security-admins"
    ]


// Optional 
# managers = [""]

// Optional 
# members  = [""]

