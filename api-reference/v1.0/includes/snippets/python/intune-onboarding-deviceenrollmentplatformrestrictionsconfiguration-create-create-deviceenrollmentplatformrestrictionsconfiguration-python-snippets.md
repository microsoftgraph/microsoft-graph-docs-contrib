---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceEnrollmentPlatformRestrictionsConfiguration()
request_body.@odata_type = '#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.Priority = 8

request_body.Version = 7

ios_restriction = DeviceEnrollmentPlatformRestriction()
ios_restriction.@odata_type = 'microsoft.graph.deviceEnrollmentPlatformRestriction'

ios_restriction.platform_blocked = True

ios_restriction.personal_device_enrollment_blocked = True

ios_restriction.os_minimum_version = 'Os Minimum Version value'

ios_restriction.os_maximum_version = 'Os Maximum Version value'


request_body.ios_restriction = ios_restriction
windows_restriction = DeviceEnrollmentPlatformRestriction()
windows_restriction.@odata_type = 'microsoft.graph.deviceEnrollmentPlatformRestriction'

windows_restriction.platform_blocked = True

windows_restriction.personal_device_enrollment_blocked = True

windows_restriction.os_minimum_version = 'Os Minimum Version value'

windows_restriction.os_maximum_version = 'Os Maximum Version value'


request_body.windows_restriction = windows_restriction
windows_mobile_restriction = DeviceEnrollmentPlatformRestriction()
windows_mobile_restriction.@odata_type = 'microsoft.graph.deviceEnrollmentPlatformRestriction'

windows_mobile_restriction.platform_blocked = True

windows_mobile_restriction.personal_device_enrollment_blocked = True

windows_mobile_restriction.os_minimum_version = 'Os Minimum Version value'

windows_mobile_restriction.os_maximum_version = 'Os Maximum Version value'


request_body.windows_mobile_restriction = windows_mobile_restriction
android_restriction = DeviceEnrollmentPlatformRestriction()
android_restriction.@odata_type = 'microsoft.graph.deviceEnrollmentPlatformRestriction'

android_restriction.platform_blocked = True

android_restriction.personal_device_enrollment_blocked = True

android_restriction.os_minimum_version = 'Os Minimum Version value'

android_restriction.os_maximum_version = 'Os Maximum Version value'


request_body.android_restriction = android_restriction
mac_o_s_restriction = DeviceEnrollmentPlatformRestriction()
mac_o_s_restriction.@odata_type = 'microsoft.graph.deviceEnrollmentPlatformRestriction'

mac_o_s_restriction.platform_blocked = True

mac_o_s_restriction.personal_device_enrollment_blocked = True

mac_o_s_restriction.os_minimum_version = 'Os Minimum Version value'

mac_o_s_restriction.os_maximum_version = 'Os Maximum Version value'


request_body.mac_o_s_restriction = mac_o_s_restriction



result = await client.device_management.device_enrollment_configurations.post(request_body = request_body)


```