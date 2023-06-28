---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceInstallState()
request_body.@odata_type = '#microsoft.graph.deviceInstallState'

request_body.device_name = 'Device Name value'

request_body.device_id = 'Device Id value'

request_body.lastSyncDateTime = DateTime('2017-01-01T00:02:49.3205976-08:00')

request_body.installstate(InstallState.Installed('installstate.installed'))

request_body.error_code = 'Error Code value'

request_body.os_version = 'Os Version value'

request_body.os_description = 'Os Description value'

request_body.user_name = 'User Name value'




result = await client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').device_states.by_device_state_id('deviceInstallState-id').patch(request_body = request_body)


```