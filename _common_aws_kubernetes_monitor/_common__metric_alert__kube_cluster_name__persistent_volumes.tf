variable "_common__metric_alert__kube_cluster_name__persistent_volumes__monitor_enabled" {
  description = "Enable/Disable the metric. Defaults to true."
  type        = bool
  default     = true
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__messages_url_enabled" {
  description = "Enable/Disable the URLS. Defaults to true. (ie. wiki, jira, repo, workspaces)"
  type        = bool
  default     = true
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__critical_threshold_enabled" {
  description = "Enable/Disable the Critical alerts. Defaults to true."
  type        = bool
  default     = true
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__warning_threshold_enabled" {
  description = "Enable/Disable the Warning alerts"
  type        = bool
  default     = false
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__critical_threshold" {
  description = "The threshold value for triggering Critical alerts in Datadog when the metric exceeds this value. The critical_threshold value for the alert trigger"
  type        = number
  default     = 1
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__warning_threshold" {
  description = "The threshold value for triggering Warning alerts in Datadog when the metric exceeds this value."
  type        = number
  default     = 0
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__critical_recovery_threshold" {
  description = "The threshold value for recovering from a Critical alert in Datadog, indicating the metric is back to a normal state."
  type        = number
  default     = 1
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__warning_recovery_threshold" {
  description = "The threshold value for recovering from a Writical alert in Datadog, indicating the metric is back to a normal state."
  type        = number
  default     = 0
}
################################################################################################
# Example
# query              = "${var.aggregation_function}(${var.time_window}):${var.aggregation_function}:${var.metric_name}{${var.tags}} by {${var.group_by}}.${var.function} > ${var.threshold}"
# sample query outputs: 	"query": "sum(last_5m):cutoff_max((default(sum:aws.lambda.errors{*} by {functionname,aws_account,region}.as_count(), 0) / default(sum:aws.lambda.invocations{*} by {functionname,aws_account,region}.as_count(), 1)) * 100, 0) > 30"
# sample query outputs: 	                       cutoff_max((default(sum:aws.lambda.errors{*} by {functionname,aws_account,region}.as_count(), 0) / default(sum:aws.lambda.invocations{*} by {functionname,aws_account,region}.as_count(), 1)) * 100, 0)
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__time_window" {
  type        = string
  description = "[`Specific Metric Custom value`] The time window for the metrics are aggregated or evaluated, defaulting to the last 15 minutes (e.g., last_5m, last_15m, etc.)"
  default     = "last_5m"
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__aggregation_function" {
  type        = string
  description = "[`Specific Metric Custom value`] The aggregation function to apply to the metric (e.g., sum, avg)"
  default     = "max"
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__metric_name" {
  type        = string
  description = "[`Specific Metric Custom value`] The Datadog metric to monitor (e.g., system.cpu.system)"
  default     = "kubernetes_state.node.status"
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__selector_tags" {
  type        = string
  description = "[`Specific Metric Custom value`] The tags to filter the metric (e.g., aws_account:*,name:*)"
  default     = "region:* AND phase:failed"
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__group_by_tags" {
  type        = string
  description = "[`Specific Metric Custom value`] The fields to group the metric by (e.g., environment,name)"
  default     = "account,kube_cluster_name,persistentvolume,phase,storageclass"
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__function" {
  type        = string
  description = "[`Specific Metric Custom value`] The function applied to the metric (e.g., as_count(), as_rate())"
  default     = "" # .as_count()
}
# A status message or template used in the escalation message for the Datadog monitor. This variable is incorporated \
# into the escalation message to provide relevant details about the current status of the monitored service. It can be used \
# to dynamically display the status, alert, or any specific message that aligns with the service's operational state.
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__status_messages" {
  description = "Status message used in the Datadog monitor escalation to indicate the current state or alert for the service."
  type        = string
  default     = ""
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__priority" {
  description = "[`Specific Metric Custom value`] Adjust the priority based on the severity of the issue you are monitoring. Option to use default `2` or `not define`"
  type        = number
  default     = 2
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__timeout_h" {
  description = "[`Specific Metric Custom value`] Number of hours a monitor can go without reporting data before automatically resolving. Range: 0 to 24 hours only."
  type        = number
  default     = 1
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__renotify_interval" {
  description = "[`Specific Metric Custom value`] The number of minutes after the last notification before a re-notification is sent, if the alert is not resolved."
  type        = number
  default     = 60
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__new_group_delay" {
  description = "[`Specific Metric Custom value`] The time (in seconds) to wait before starting alerting, to allow newly created groups to boot and applications to fully start. This should be a non-negative integer."
  type        = number
  default     = 300
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data" {
  description = "[`Specific Metric Custom value`] Determines whether to notify when no data is received for a given monitor in Datadog. If set to true, Datadog will send notifications when there is no data to evaluate, which can help identify missing metrics or system issues. If set to false, no notification will be triggered in the absence of data."
  type        = bool
  default     = false
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data_timeframe" {
  type        = number
  description = "[`Specific Metric Custom value`] If true, triggers a notification when no data is received within the specified timeframe in Datadog."
  default     = 10
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__custom_owners" {
  type        = list(string)
  description = "[`Specific Metric Custom value`] Static emails or MS teams channels for additional notifications, used when owner tags are not yet applied to AWS resources or Kubernetes."
  default     = ["*"]
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__action_message" {
  description = "A message used for a quick runbook when the alert occurs."
  type        = string
  default     = ""
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__action_wiki" {
  description = "This variable provides a quick reference to a runbook, troubleshooting guide, or other relevant resources to help resolve the issue triggered by the alert."
  type        = string
  default     = ""
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__action_jira" {
  description = "Jira JQL query for each metric, enabling on-call teams to quickly locate related tickets for the issue at hand related to the metric alerts."
  type        = string
  default     = ""
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__runbook_main_url" {
  description = "URL to the Confluence (wiki) Runbook for Datadog monitoring alerts, providing guidance for specific alert resolutions."
  type        = string
  default     = "https://CompanyName.atlassian.net/wiki/spaces/CCoE/runbook"
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__action_github" {
  description = "This variable is used to link directly to the relevant GitHub page, allowing quick access for modifying the threshold or making adjustments related to the metric. It helps streamline the process of reviewing and updating alert thresholds."
  type        = string
  default     = ""
}
variable "_common__metric_alert__kube_cluster_name__persistent_volumes__metric_exceptions" {
  description = "List of exceptions to override monitor behavior under specific conditions."
  type        = string
  default     = ""
}


locals {
  _common__metric_alert__kube_cluster_name__persistent_volumes__time_window   = var._common__metric_alert__kube_cluster_name__persistent_volumes__time_window != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__time_window : var.time_window
  _common__metric_alert__kube_cluster_name__persistent_volumes__custom_owners = var._common__metric_alert__kube_cluster_name__persistent_volumes__custom_owners != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__custom_owners : var.custom_owners

  _common__metric_alert__kube_cluster_name__persistent_volumes__timeout_h                = var._common__metric_alert__kube_cluster_name__persistent_volumes__timeout_h != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__timeout_h : var.timeout_h
  _common__metric_alert__kube_cluster_name__persistent_volumes__renotify_interval        = var._common__metric_alert__kube_cluster_name__persistent_volumes__renotify_interval != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__renotify_interval : var.renotify_interval
  _common__metric_alert__kube_cluster_name__persistent_volumes__new_group_delay          = var._common__metric_alert__kube_cluster_name__persistent_volumes__new_group_delay != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__new_group_delay : var.new_group_delay
  _common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data           = var._common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data : var.notify_no_data
  _common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data_timeframe = var._common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data_timeframe != "" ? var._common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data_timeframe : var.notify_no_data_timeframe
}


resource "datadog_monitor" "_common__metric_alert__kube_cluster_name__persistent_volumes" {

  count                    = var._common__metric_alert__kube_cluster_name__persistent_volumes__monitor_enabled ? 1 : 0 # It will check the value, if its 1 (true), i will create the datadog metrics.
  type                     = "metric alert"
  require_full_window      = "true" # Set this parameter to “require” if the monitor should not be evaluated until the evaluation window is considered to be filled with data.
  group_retention_duration = "2h"   # Remove the non-reporting group after set duration

  name               = "[${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} {{#is_alert}}{{{comparator}}} Critical {{threshold}} ({{value}}) {{/is_alert}} {{#is_alert_to_warning}} Critical moved to Warning {{warn_threshold}} ({{value}}) {{/is_alert_to_warning}} {{#is_warning}}{{{comparator}}} Warning {{warn_threshold}} ({{value}}) {{/is_warning}}"
  escalation_message = "[${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} {{#is_alert}}{{{comparator}}} Critical {{thresho ld}} ({{value}}) {{/is_alert}} {{#is_alert_to_warning}} from Critical moved to Warning {{warn_threshold}} ({{value}}) {{/is_alert_to_warning}} {{#is_warning}}{{{comparator}}} Warning {{warn_threshold}} ({{value}}) {{/is_warning}}"

  # Reference code: https://github.com/claranet/terraform-datadog-monitors/blob/master/cloud/aws/lambda/monitors-lambda.tf#L105-L109
  query = <<EOQ
    avg(${var._common__metric_alert__kube_cluster_name__persistent_volumes__time_window}):
    ${var._common__metric_alert__kube_cluster_name__persistent_volumes__aggregation_function}:${var._common__metric_alert__kube_cluster_name__persistent_volumes__metric_name}{${var._common__metric_alert__kube_cluster_name__persistent_volumes__selector_tags} ${var.module_selector_tags}} by {${var._common__metric_alert__kube_cluster_name__persistent_volumes__group_by_tags}}${var._common__metric_alert__kube_cluster_name__persistent_volumes__function}
    > ${var._common__metric_alert__kube_cluster_name__persistent_volumes__critical_threshold}
  EOQ

  message = <<EOT
> - first_owner: <@{{first_owner.name}}> 
> - team_owner: <@{{team_owner.name}}> 
%{if var.custom_owners != "NULL"}> - Custom List of notifications: ${join(",", compact(var._common__metric_alert__kube_cluster_name__persistent_volumes__custom_owners))} %{endif} 

{{#is_alert}}{{{comparator}}} {{threshold}} ({{value}}){{/is_alert}} {{#is_warning}}{{{comparator}}} {{warn_threshold}} ({{value}}){{/is_warning}}

%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__critical_threshold_enabled != "false"} {{#is_alert}} [${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} Critical Level {{{comparator}}} {{threshold}} ({{value}}) {{/is_alert}} %{endif} 
%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__warning_threshold_enabled != "false"} {{#is_alert_to_warning}} [${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} Moved from Critical to Warning {{{comparator}}} {{warn_threshold}} ({{value}}) {{/is_alert_to_warning}} %{endif} 
%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__warning_threshold_enabled != "false"} {{#is_warning}} [${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} Warning Level {{{comparator}}} {{warn_threshold}} ({{value}}) {{/is_warning}} %{endif} 
%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__critical_threshold_enabled != "false"} {{#is_alert_recovery}} [${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} Critical Recovery (OK) {{{comparator}}} {{threshold}} ({{value}}) {{/is_alert_recovery}} %{endif} 
%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__warning_threshold_enabled != "false"} {{#is_warning_recovery}} [${var.service_name}] (Kubernetes) There are failed Physical Volume Claims, storage has problems on {{kube_cluster_name.name}} Warning Recovery (OK) {{{comparator}}} {{threshold}} ({{value}}) {{/is_warning_recovery}} %{endif} 
%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__action_message != ""} ${var._common__metric_alert__kube_cluster_name__persistent_volumes__action_message} %{endif}         
%{if var._common__metric_alert__kube_cluster_name__persistent_volumes__messages_url_enabled != ""}
Runbook:
- [TBA]

References:
- Wiki: %{if var._common__metric_alert__kube_cluster_name__persistent_volumes__action_wiki != ""} [Related Docs](${var._common__metric_alert__kube_cluster_name__persistent_volumes__action_wiki}) %{endif} 
- Jira: %{if var._common__metric_alert__kube_cluster_name__persistent_volumes__action_jira != ""} [Common Jira](${var._common__metric_alert__kube_cluster_name__persistent_volumes__action_jira}) %{endif} 
- Github Repo (Module): %{if var.url_module != ""} [Module](${var.url_module}) %{endif} 
- Github Repo (Resource Workspace): %{if var.url_workspace != ""} [Workspace](${var.url_workspace}) %{endif}
- Documentation: [Datadog (Integration)](https://docs.datadoghq.com/integrations/amazon_elb/)
- Datadog Dashboard: [Dashboard - System Metrics](https://app.datadoghq.com/dash/integration/1/system---metrics?fromUser=false&refresh_mode=sliding&tpl_var_scope%5B0%5D=account%3Aapps-prd&live=true)
- Datadog Dashboard: [Dashboard - System Disk IO](https://app.datadoghq.com/dash/integration/2/system---disk-io?fromUser=false&refresh_mode=sliding&live=true)
- Datadog Dashboard: [Dashboard - System Networking](https://app.datadoghq.com/dash/integration/3/system---networking?fromUser=false&refresh_mode=sliding&live=true)
- Support resources: [Create Request IT to IT via ServiceNow](https://CompanyName.service-now.com/esc?id=emp_taxonomy_topic&topic_id=93603a541b7fcad00885bb39cd4bcb2f&in_context=true)
- Incident Ticket [Open New Incident: (Please refer to Escalation Process first!)](https://CompanyName.service-now.com/nav_to.do?uri=%2Fincident_list.do%3Fsysparm_userpref_module%3Dcd6653984fc4d600f7252b8ca310c795%26sysparm_query%3Dactive%3Dtrue%5EEQ%26active%3Dtrue%26sysparm_clear_stack%3Dtrue)
%{endif}
EOT



  monitor_thresholds {
    critical = var._common__metric_alert__kube_cluster_name__persistent_volumes__critical_threshold
    #critical_recovery = var._common__metric_alert__kube_cluster_name__persistent_volumes__critical_recovery_threshold
    #warning           = var._common__metric_alert__kube_cluster_name__persistent_volumes__warning_threshold
    #warning_recovery  = var._common__metric_alert__kube_cluster_name__persistent_volumes__warning_recovery_threshold
  }

  renotify_interval = local._common__metric_alert__kube_cluster_name__persistent_volumes__renotify_interval
  new_group_delay   = local._common__metric_alert__kube_cluster_name__persistent_volumes__new_group_delay
  #no_data_timeframe = local._common__metric_alert__kube_cluster_name__persistent_volumes__no_data_timeframe
  notify_no_data = local._common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data
  #notify_no_data_timeframe = local._common__metric_alert__kube_cluster_name__persistent_volumes__notify_no_data_timeframe
  timeout_h = local._common__metric_alert__kube_cluster_name__persistent_volumes__timeout_h


  restricted_roles = var.restricted_roles
  tags             = concat(var.datadog_monitor_tags, var.datadog_monitor_module_tags) #, var.additional_tags)
}
