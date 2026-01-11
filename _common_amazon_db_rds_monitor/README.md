

> [!NOTE]
> Datadog Docs: [Template variables](https://docs.datadoghq.com/monitors/notify/variables/?tab=is_alert)
>  - Use template variables to customize your monitor notifications. The built-in variables are:

<!-- Datadog for RDS code references -->
References
-[clarane](https://github.com/claranet/terraform-datadog-monitors/tree/master/cloud/aws/rds/common)
-[cloudposse](https://github.com/cloudposse/terraform-datadog-platform/blob/main/catalog/monitors/rds.yaml)


### Example with Python code:
```
module "datadog_monitor" {
    
    # Utilize our Terraform Enterprise to implement the Datadog module.
    # https://app.terraform.io/app/CompanyNameGroup/registry/modules/private/CompanyNameGroup/monitor/datadog/2.0.0
    source                 = "app.terraform.io/CompanyNameGroup/monitor/datadog//_common_aws_amazon_database_rds_monitor"
    version                = "2.0.0"

    ## When utilizing local modules (used for testing and compiling the module)
    # source = "./modules/datadog_monitor/_common_aws_amazon_database_rds_monitor"
    
    DD_APP_KEY             = "["This variable is required and must not be empty."]"
    DD_API_KEY             = "["This variable is required and must not be empty."]"
    
    service_name           = "["This variable is required and must not be empty."]" # ie Mulesoft:production 
    datadog_monitor_tags   = ["Tag_01:Value_01", "Tag_02:Value_02"] # ie. ["Service:Mulesoft", "Environment:Production"]

    ## Using a common group email ensures consistent notifications, easier management, promotes team collaboration, and eliminates the need to update code when someone leaves the team.  
    critical_notify_oncall = "[@PagerDuty]" #Use datadog_integration_pagerduty to link on your notification for oncall.
    critical_notify        = "@john.medilo@CompanyName.com" # Use MS Teams or Email to link your notification, ideally we should use group email instead of individual email.
    warning_notify         = "@john.medilo@CompanyName.com" # Use datadog_integration_pagerduty to link your PagerDuty service.

    
    url_workspace = "https://github.com/CompanyNameGroup2/terraform-datadog-monitor/tree/v2/_common_aws_amazon_database_rds_monitor"
}
```