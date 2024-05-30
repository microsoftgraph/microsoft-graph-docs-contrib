---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_enrollment_platform_restrictions_configuration import DeviceEnrollmentPlatformRestrictionsConfiguration
from msgraph.generated.models.device_enrollment_platform_restriction import DeviceEnrollmentPlatformRestriction

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceEnrollmentPlatformRestrictionsConfiguration(
	odata_type = "#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration",
	display_name = "Display Name value",
	description = "Description value",
	priority = 8,
	version = 7,
	ios_restriction = DeviceEnrollmentPlatformRestriction(
		odata_type = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		platform_blocked = True,
		personal_device_enrollment_blocked = True,
		os_minimum_version = "Os Minimum Version value",
		os_maximum_version = "Os Maximum Version value",
	),
	windows_restriction = DeviceEnrollmentPlatformRestriction(
		odata_type = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		platform_blocked = True,
		personal_device_enrollment_blocked = True,
		os_minimum_version = "Os Minimum Version value",
		os_maximum_version = "Os Maximum Version value",
	),
	windows_mobile_restriction = DeviceEnrollmentPlatformRestriction(
		odata_type = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		platform_blocked = True,
		personal_device_enrollment_blocked = True,
		os_minimum_version = "Os Minimum Version value",
		os_maximum_version = "Os Maximum Version value",
	),
	android_restriction = DeviceEnrollmentPlatformRestriction(
		odata_type = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		platform_blocked = True,
		personal_device_enrollment_blocked = True,
		os_minimum_version = "Os Minimum Version value",
		os_maximum_version = "Os Maximum Version value",
	),
	mac_o_s_restriction = DeviceEnrollmentPlatformRestriction(
		odata_type = "microsoft.graph.deviceEnrollmentPlatformRestriction",
		platform_blocked = True,
		personal_device_enrollment_blocked = True,
		os_minimum_version = "Os Minimum Version value",
		os_maximum_version = "Os Maximum Version value",
	),
)

result = await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').patch(request_body)


```