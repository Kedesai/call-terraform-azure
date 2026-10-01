variable "tenant_id" { description = "Microsoft Entra tenant ID."; type = string }
variable "root_management_group_id" { description = "Existing tenant root or intermediate management group resource ID."; type = string }

variable "management_groups" {
  type = map(object({ name = string, display_name = string, parent_key = optional(string) }))
  default = {}
}
variable "subscription_associations" {
  type = map(object({ subscription_id = string, management_group_key = string }))
  default = {}
}
variable "policy_assignments" {
  type = map(object({
    name                    = string
    management_group_key    = string
    policy_definition_id    = string
    display_name            = optional(string)
    description             = optional(string)
    enforce                 = optional(bool, true)
    parameters              = optional(string)
    metadata                = optional(string)
    not_scopes              = optional(list(string), [])
    non_compliance_messages = optional(list(string), [])
    location                = optional(string)
    identity_type           = optional(string)
  }))
  default = {}
}
