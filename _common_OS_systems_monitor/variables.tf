variable "service_name" {
  description = "# Application or solution name (ie. `Mulesoft:production [us-west-2] aws.elb.httpcode_backend_5xx (rtf.CompanyName.com)`"
  type        = string
}
#Notify an active Datadog user by email with @<DD_USER_EMAIL_ADDRESS>, or MS Teams channel, or PagerDuty.
variable "critical_notify" {
  description = "Default notification channel or commom email for critical alerts in this module. This will allow us to enable/disable all related notifications for Critical alerts"
  type        = string
  default     = "@john-medilo@CompanyName.com" #temporary
}
variable "critical_notify_oncall" {
  description = ""
  type        = string
  default     = "@john-medilo@CompanyName.com" #temporary
}
variable "warning_notify" {
  description = "Default notification channel or commom email for warning alerts in this module. This will allow us to enable/disable all related notifications for Warning alerts"
  type        = string
  default     = "@john-medilo@CompanyName.com" #temporary"
}
variable "module_selector_tags" {
  description = "[`Module Metric Custom value`] The tags to filter the metric (e.g., aws_account:*,name:*)"
  type        = string
  default     = ""
}
variable "module_selector_tags_by" {
  description = "[`Module Metric Custom value`] The tags to filter the metric (e.g., aws_account:*,name:*)"
  type        = string
  default     = ""
}
variable "time_window" {
  type        = string
  description = "[`Specific Metric Custom value`] The time window for the metrics are aggregated or evaluated, defaulting to the last 15 minutes (e.g., last_5m, last_15m, etc.)"
  default     = "last_15m"
}
variable "datadog_monitor_tags" {
  description = "Variable to assign tags for organizing and filtering Datadog Monitor. Tags can be in the format value or <KEY>:<VALUE>."
  type        = list(string)
}
variable "datadog_monitor_module_tags" {
  description = "Variable to assign tags for organizing and filtering Datadog Module. Tags can be in the format value or <KEY>:<VALUE>."
  type        = list(string)
  default     = ["Module:_common_aws_amazon_database_rds_monitor", "Managedby:Terraform"]
}
#variable "runbook_main_url" {
#  description = "URL to the Confluence (wiki) Runbook for Datadog monitoring alerts, providing guidance for specific alert resolutions."
#  type        = string
#  default     = "https://CompanyName.atlassian.net/wiki/spaces/CCoE/runbook"
#}
variable "restricted_roles" {
  type        = list(string)
  description = "List of restricted roles (Admin, Standard, Read Only) in Datadog. See: https://docs.datadoghq.com/account_management/rbac/permissions/"
  default     = ["3c63cbe1-fa17-11eb-bb1b-da7ad0900002"]
}
variable "priority" {
  description = "Adjust the priority based on the severity of the issue you are monitoring. Option to use default `2` or `not define`"
  type        = number
  default     = 2
}
variable "timeout_h" {
  description = "Number of hours a monitor can go without reporting data before automatically resolving. Range: 0 to 24 hours only."
  type        = number
  default     = 2
}
variable "renotify_interval" {
  description = "The number of minutes after the last notification before a re-notification is sent, if the alert is not resolved."
  type        = number
  default     = 60
}
variable "new_group_delay" {
  description = "The time (in seconds) to wait before starting alerting, to allow newly created groups to boot and applications to fully start. This should be a non-negative integer."
  type        = number
  default     = 300
}
variable "notify_no_data" {
  description = "Determines whether to notify when no data is received for a given monitor in Datadog. If set to true, Datadog will send notifications when there is no data to evaluate, which can help identify missing metrics or system issues. If set to false, no notification will be triggered in the absence of data."
  type        = bool
  default     = "false"
}
variable "notify_no_data_timeframe" {
  description = "If true, triggers a notification when no data is received within the specified timeframe in Datadog."
  type        = number
  default     = 10
}
variable "custom_owners" {
  description = "Static emails or MS teams channels for additional notifications, used when owner tags are not yet applied to AWS resources or Kubernetes."
  type        = list(string)
  default     = ["NULL"]
}
variable "url_module" {
  description = "The URL path for the Terraform code module."
  type        = string
  default     = "https://github.com/CompanyNameGroup2/terraform-aws-datadog"
}
variable "url_workspace" {
  description = "The GitHub URL path to the service-specific code for Datadog. This is important for decoupled services, ensuring Datadog alerts can locate the workspace for updates when needed."
  type        = string
  default     = "`NOTE: Please ensure you assign your Workspace URL`"
}
variable "DD_API_KEY" {
  type        = string
  sensitive   = true
  description = "Datadog API key"
}
variable "DD_APP_KEY" {
  type        = string
  sensitive   = true
  description = "Datadog APP key"
}