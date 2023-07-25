---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsDefenderAdvancedThreatProtectionConfiguration()
request_body.@odata_type = '#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.allow_sample_sharing = True

request_body.enable_expedited_telemetry_reporting = True




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```