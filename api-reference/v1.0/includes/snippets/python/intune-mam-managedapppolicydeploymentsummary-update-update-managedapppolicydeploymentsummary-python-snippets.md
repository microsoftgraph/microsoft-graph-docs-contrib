---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedAppPolicyDeploymentSummary()
request_body.@odata_type = '#microsoft.graph.managedAppPolicyDeploymentSummary'

request_body.display_name = 'Display Name value'

request_body.ConfigurationDeployedUserCount = 14

request_body.lastRefreshTime = DateTime('2017-01-01T00:01:30.1240368-08:00')

configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1 = ManagedAppPolicyDeploymentSummaryPerApp()
configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1.@odata_type = 'microsoft.graph.managedAppPolicyDeploymentSummaryPerApp'

configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1mobile_app_identifier = AndroidMobileAppIdentifier()
configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1mobile_app_identifier.@odata_type = 'microsoft.graph.androidMobileAppIdentifier'

configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1mobile_app_identifier.package_id = 'Package Id value'


configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1.mobile_app_identifier = configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1mobile_app_identifier
configuration_deployment_summary_per_app_managed_app_policy_deployment_summary_per_app1.ConfigurationAppliedUserCount = 13


configurationDeploymentSummaryPerAppArray []= configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1;
request_body.configurationdeploymentsummaryperapp(configurationDeploymentSummaryPerAppArray)


request_body.version = 'Version value'




result = await client.device_app_management.io_managed_app_protections.by_io_managed_app_protection_id('iosManagedAppProtection-id').deployment_summary.patch(request_body = request_body)


```