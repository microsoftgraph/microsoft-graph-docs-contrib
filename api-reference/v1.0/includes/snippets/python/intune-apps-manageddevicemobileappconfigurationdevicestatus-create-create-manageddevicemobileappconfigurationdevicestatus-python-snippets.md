---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedDeviceMobileAppConfigurationDeviceStatus()
request_body.@odata_type = '#microsoft.graph.managedDeviceMobileAppConfigurationDeviceStatus'

request_body.device_display_name = 'Device Display Name value'

request_body.user_name = 'User Name value'

request_body.device_model = 'Device Model value'

request_body.complianceGracePeriodExpirationDateTime = DateTime('2016-12-31T23:56:44.951111-08:00')

request_body.status(ComplianceStatus.NotApplicable('compliancestatus.notapplicable'))

request_body.lastReportedDateTime = DateTime('2017-01-01T00:00:17.7769392-08:00')

request_body.user_principal_name = 'User Principal Name value'




result = await client.device_app_management.mobile_app_configurations.by_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').device_statuses.post(request_body = request_body)


```