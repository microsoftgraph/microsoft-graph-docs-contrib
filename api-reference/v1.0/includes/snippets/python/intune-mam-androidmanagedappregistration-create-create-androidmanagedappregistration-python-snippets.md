---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AndroidManagedAppRegistration()
request_body.@odata_type = '#microsoft.graph.androidManagedAppRegistration'

request_body.lastSyncDateTime = DateTime('2017-01-01T00:02:49.3205976-08:00')

request_body.application_version = 'Application Version value'

request_body.management_sdk_version = 'Management Sdk Version value'

request_body.platform_version = 'Platform Version value'

request_body.device_type = 'Device Type value'

request_body.device_tag = 'Device Tag value'

request_body.device_name = 'Device Name value'

request_body.FlaggedReasons([request_body.managedappflaggedreason(ManagedAppFlaggedReason.RootedDevice('managedappflaggedreason.rooteddevice'))
])

request_body.user_id = 'User Id value'

app_identifier = AndroidMobileAppIdentifier()
app_identifier.@odata_type = 'microsoft.graph.androidMobileAppIdentifier'

app_identifier.package_id = 'Package Id value'


request_body.app_identifier = app_identifier
request_body.version = 'Version value'




result = await client.device_app_management.managed_app_registrations.post(request_body = request_body)


```