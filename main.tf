locals {
  notifications_notification_configurations = { for k1, v1 in var.notifications_notification_configurations : k1 => { aggregation_duration = v1.aggregation_duration, description = v1.description, name = v1.name, tags = v1.tags } }

  notifications_channel_associations = merge([
    for k1, v1 in var.notifications_notification_configurations : {
      for k2, v2 in coalesce(v1.notifications_channel_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        notification_configuration_arn = module.notifications_notification_configurations.notifications_notification_configurations_arn["${k1}"]
      })
    }
  ]...)

  notifications_event_rules = merge([
    for k1, v1 in var.notifications_notification_configurations : {
      for k2, v2 in coalesce(v1.notifications_event_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        notification_configuration_arn = module.notifications_notification_configurations.notifications_notification_configurations_arn["${k1}"]
      })
    }
  ]...)

  notifications_organizational_unit_associations = merge([
    for k1, v1 in var.notifications_notification_configurations : {
      for k2, v2 in coalesce(v1.notifications_organizational_unit_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        notification_configuration_arn = module.notifications_notification_configurations.notifications_notification_configurations_arn["${k1}"]
      })
    }
  ]...)
}

module "notifications_notification_configurations" {
  source                                    = "git::https://github.com/AeternaModules/aws_notifications_notification_configuration.git?ref=v6.58.0"
  notifications_notification_configurations = local.notifications_notification_configurations
}

module "notifications_channel_associations" {
  source                             = "git::https://github.com/AeternaModules/aws_notifications_channel_association.git?ref=v6.58.0"
  notifications_channel_associations = local.notifications_channel_associations
  depends_on                         = [module.notifications_notification_configurations]
}

module "notifications_event_rules" {
  source                    = "git::https://github.com/AeternaModules/aws_notifications_event_rule.git?ref=v6.58.0"
  notifications_event_rules = local.notifications_event_rules
  depends_on                = [module.notifications_notification_configurations]
}

module "notifications_organizational_unit_associations" {
  source                                         = "git::https://github.com/AeternaModules/aws_notifications_organizational_unit_association.git?ref=v6.58.0"
  notifications_organizational_unit_associations = local.notifications_organizational_unit_associations
  depends_on                                     = [module.notifications_notification_configurations]
}

