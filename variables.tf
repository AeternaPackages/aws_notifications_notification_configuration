variable "notifications_notification_configurations" {
  description = <<EOT
Map of notifications_notification_configurations, attributes below
Required:
    - description
    - name
Optional:
    - aggregation_duration
    - tags
Nested notifications_channel_associations (aws_notifications_channel_association):
    Required:
        - arn
Nested notifications_event_rules (aws_notifications_event_rule):
    Required:
        - event_type
        - regions
        - source
    Optional:
        - event_pattern
Nested notifications_organizational_unit_associations (aws_notifications_organizational_unit_association):
    Required:
        - organizational_unit_id
EOT

  type = map(object({
    description          = string
    name                 = string
    aggregation_duration = optional(string)
    tags                 = optional(map(string))
    notifications_channel_associations = optional(map(object({
      arn = string
    })))
    notifications_event_rules = optional(map(object({
      event_type    = string
      regions       = set(string)
      source        = string
      event_pattern = optional(string)
    })))
    notifications_organizational_unit_associations = optional(map(object({
      organizational_unit_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.notifications_notification_configurations) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.notifications_notification_configurations : [for kk in keys(coalesce(v0.notifications_channel_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.notifications_notification_configurations : [for kk in keys(coalesce(v0.notifications_event_rules, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.notifications_notification_configurations : [for kk in keys(coalesce(v0.notifications_organizational_unit_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
