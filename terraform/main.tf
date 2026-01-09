module "replication" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "edumarjs+aft-repl@amazon.com"
    AccountName               = "aft-replication"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "edumarjs+aft-repl@amazon.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "Replication"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod-repl"
  }

  account_customizations_name = "sandbox"
}
