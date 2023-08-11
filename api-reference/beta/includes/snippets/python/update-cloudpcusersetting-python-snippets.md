---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcUserSetting()
request_body.@odata_type = '#microsoft.graph.cloudPcUserSetting'

request_body.display_name = 'Example'

request_body.self_service_enabled = True

restore_point_setting = CloudPcRestorePointSetting()
restore_point_setting.FrequencyInHours = 16

restore_point_setting.user_restore_enabled = True


request_body.restore_point_setting = restore_point_setting
request_body.local_admin_enabled = False

request_body.reset_enabled = True




result = await client.device_management.virtual_endpoint.user_settings.by_user_setting_id('cloudPcUserSetting-id').patch(request_body = request_body)


```