---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ManagedDeviceMobileAppConfigurationDeviceSummary()
request_body.@odata_type = '#microsoft.graph.managedDeviceMobileAppConfigurationDeviceSummary'

request_body.PendingCount = 12

request_body.NotApplicableCount = 2

request_body.SuccessCount = 12

request_body.ErrorCount = 10

request_body.FailedCount = 11

request_body.lastUpdateDateTime = DateTime('2016-12-31T23:58:21.6459442-08:00')

request_body.ConfigurationVersion = 4




result = await client.device_app_management.mobile_app_configurations.by_mobile_app_configuration_id('managedDeviceMobileAppConfiguration-id').device_statu_summary.patch(request_body = request_body)


```