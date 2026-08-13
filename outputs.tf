# --- aws_notifications_notification_configuration ---
output "notifications_notification_configurations_id" {
  description = "Map of id values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_id
}

output "notifications_notification_configurations_aggregation_duration" {
  description = "Map of aggregation_duration values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_aggregation_duration
}

output "notifications_notification_configurations_arn" {
  description = "Map of arn values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_arn
}

output "notifications_notification_configurations_description" {
  description = "Map of description values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_description
}

output "notifications_notification_configurations_name" {
  description = "Map of name values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_name
}

output "notifications_notification_configurations_tags" {
  description = "Map of tags values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_tags
}

output "notifications_notification_configurations_tags_all" {
  description = "Map of tags_all values across all notifications_notification_configurations, keyed the same as var.notifications_notification_configurations"
  value       = module.notifications_notification_configurations.notifications_notification_configurations_tags_all
}

# --- aws_notifications_channel_association ---
output "notifications_channel_associations_id" {
  description = "Map of id values across all notifications_channel_associations, keyed the same as var.notifications_channel_associations"
  value       = module.notifications_channel_associations.notifications_channel_associations_id
}

output "notifications_channel_associations_arn" {
  description = "Map of arn values across all notifications_channel_associations, keyed the same as var.notifications_channel_associations"
  value       = module.notifications_channel_associations.notifications_channel_associations_arn
}

output "notifications_channel_associations_notification_configuration_arn" {
  description = "Map of notification_configuration_arn values across all notifications_channel_associations, keyed the same as var.notifications_channel_associations"
  value       = module.notifications_channel_associations.notifications_channel_associations_notification_configuration_arn
}

# --- aws_notifications_event_rule ---
output "notifications_event_rules_id" {
  description = "Map of id values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_id
}

output "notifications_event_rules_arn" {
  description = "Map of arn values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_arn
}

output "notifications_event_rules_event_pattern" {
  description = "Map of event_pattern values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_event_pattern
}

output "notifications_event_rules_event_type" {
  description = "Map of event_type values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_event_type
}

output "notifications_event_rules_notification_configuration_arn" {
  description = "Map of notification_configuration_arn values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_notification_configuration_arn
}

output "notifications_event_rules_regions" {
  description = "Map of regions values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_regions
}

output "notifications_event_rules_source" {
  description = "Map of source values across all notifications_event_rules, keyed the same as var.notifications_event_rules"
  value       = module.notifications_event_rules.notifications_event_rules_source
}

# --- aws_notifications_organizational_unit_association ---
output "notifications_organizational_unit_associations_id" {
  description = "Map of id values across all notifications_organizational_unit_associations, keyed the same as var.notifications_organizational_unit_associations"
  value       = module.notifications_organizational_unit_associations.notifications_organizational_unit_associations_id
}

output "notifications_organizational_unit_associations_notification_configuration_arn" {
  description = "Map of notification_configuration_arn values across all notifications_organizational_unit_associations, keyed the same as var.notifications_organizational_unit_associations"
  value       = module.notifications_organizational_unit_associations.notifications_organizational_unit_associations_notification_configuration_arn
}

output "notifications_organizational_unit_associations_organizational_unit_id" {
  description = "Map of organizational_unit_id values across all notifications_organizational_unit_associations, keyed the same as var.notifications_organizational_unit_associations"
  value       = module.notifications_organizational_unit_associations.notifications_organizational_unit_associations_organizational_unit_id
}


