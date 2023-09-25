 Automatic creation of Google Cloud Identity groups
In the foundation, Google Cloud Identity groups are used for authentication and access management .

To enable automatic creation of the required groups, complete the following actions:

Have an existing project for Cloud Identity API billing.
Enable the Cloud Identity API (cloudidentity.googleapis.com) on the billing project.
Grant role roles/serviceusage.serviceUsageConsumer to the user running Terraform on the billing project.
Provide values for the groups and billing project in the variable groups.
All groups in the groups.required_groups are required.

All groups in the groups.optional_groups are optional.


