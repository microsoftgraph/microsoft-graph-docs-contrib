---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SettingStateDeviceSummary()
request_body.@odata_type = '#microsoft.graph.settingStateDeviceSummary'

request_body.setting_name = 'Setting Name value'

request_body.instance_path = 'Instance Path value'

request_body.UnknownDeviceCount = 2

request_body.NotApplicableDeviceCount = 8

request_body.CompliantDeviceCount = 4

request_body.RemediatedDeviceCount = 5

request_body.NonCompliantDeviceCount = 7

request_body.ErrorDeviceCount = 0

request_body.ConflictDeviceCount = 3




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').device_setting_state_summaries.by_device_setting_state_summarie_id('settingStateDeviceSummary-id').patch(request_body = request_body)


```