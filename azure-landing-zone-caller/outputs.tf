output "management_groups" {
  value = module.landing_zone.management_groups
}

output "subscription_associations" {
  value = module.landing_zone.subscription_associations
}

output "policy_assignments" {
  value = module.landing_zone.policy_assignments
}
