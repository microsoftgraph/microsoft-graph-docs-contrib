---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedDeviceMobileAppConfigurationUserStatus()
request_body.@odata_type = '#microsoft.graph.managedDeviceMobileAppConfigurationUserStatus'

request_body.user_display_name = 'User Display Name value'

request_body.DevicesCount = 12

request_body.status(ComplianceStatus.NotApplicable('compliancestatus.notapplicable'))

request_body.lastReportedDateTime = DateTime('2017-01-01T00:00:17.7769392-08:00')

request_body.user_principal_name = 'User Principal Name value'




result = await client.device_app_management.mobile_app_configurations.by_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').user_statuses.post(request_body = request_body)


```