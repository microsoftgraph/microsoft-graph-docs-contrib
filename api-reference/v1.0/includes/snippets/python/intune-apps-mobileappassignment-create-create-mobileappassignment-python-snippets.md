---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MobileAppAssignment()
request_body.@odata_type = '#microsoft.graph.mobileAppAssignment'

request_body.intent(InstallIntent.Required('installintent.required'))

target = AllLicensedUsersAssignmentTarget()
target.@odata_type = 'microsoft.graph.allLicensedUsersAssignmentTarget'


request_body.target = target
settings = WindowsUniversalAppXAppAssignmentSettings()
settings.@odata_type = 'microsoft.graph.windowsUniversalAppXAppAssignmentSettings'

settings.use_device_context = True


request_body.settings = settings



result = await client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').assignments.post(request_body = request_body)


```