module "landing_zone" {
  source = "../azure-landing-zone-reusable/foundation"

  root_management_group_id = var.root_management_group_id
  management_groups         = var.management_groups
  subscription_associations = var.subscription_associations
  policy_assignments        = var.policy_assignments
}
