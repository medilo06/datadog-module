output "_common__metric_alert__OS__system_cpu" {
  value = var._common__metric_alert__OS__system_cpu__monitor_enabled ? datadog_monitor._common__metric_alert__OS__system_cpu[0] : null
}



output "datadog_monitor_ids" {
  description = "List of Datadog monitor IDs after modification."
  value = {
    _common__metric_alert__OS__system_cpu = var._common__metric_alert__OS__system_cpu__monitor_enabled ? datadog_monitor._common__metric_alert__OS__system_cpu[0].id : null
  }
}
