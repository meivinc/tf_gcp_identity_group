Automatic creation of Google Cloud Identity groups
In the foundation, Google Cloud Identity groups are used for authentication and access management.

This Terraform code let you easily create groups into GCP in an automated way.

To enable automatic creation of the required groups, complete the following actions:

* Have an **existing project** for Cloud Identity API billing.
* Enable the **Cloud Identity API** (cloudidentity.googleapis.com) on the billing project.
* Grant role **roles/serviceusage.serviceUsageConsumer** to the user running Terraform on the billing project.
* Provide values for the groups and billing project in the variable groups.


To be able to launch the terraform code, you have to modify the **terraform.tfvars** files and fill the mandatory values : 

```hcl

project_id = "my-project"

domain = "domain.fr"

// this value is optional and disabled by default
# group_prefix = "prefix-"

owners = ["terraform-sa@domain.fr"]

group_id = [
    "grp-gcp-org",
    "grp-gcp-billing",
    "grp-gcp-logging"
    ]

```

The variable **managers** and **members** have been disabled by default. 

To enable it, uncomment lines in the **main.tf** file : 
```hcl
  //managers     = var.managers
  //members      = var.members
```

Then uncomment in **terraform.tfvars** file corresponding line and fill with the desired values (in list format)
```hcl
// Optional 
# managers = [""]

// Optional 
# members  = [""]

```



| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|project_id|Project containing Cloud Identity API Billing|'string'|my-project|yes|
|domain|Domain used in your organization|'string'|mydomain.fr|yes|
|owners|Owner of the groups which will be created|'list'|terraform-sa@domain.fr|yes|
|group_id|List of groups which will be created|'list'|<pre>[<br>"grp-gcp-org",<br> "grp-gcp-billing",<br> "grp-gcp-logging"<br>]</pre>|yes|
|group_prefix|A prefix can be set at the beginning of each group created|'string'|""|no|
|managers|Optional parameters to set a manager of groups|'list'|n/a|no|
|members|Optional parameters to set members of created groups|'list'|n/a|no|