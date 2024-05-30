---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.android_managed_app_registration import AndroidManagedAppRegistration
from msgraph.generated.models.managed_app_flagged_reason import ManagedAppFlaggedReason
from msgraph.generated.models.android_mobile_app_identifier import AndroidMobileAppIdentifier

graph_client = GraphServiceClient(credentials, scopes)

request_body = AndroidManagedAppRegistration(
	odata_type = "#microsoft.graph.androidManagedAppRegistration",
	last_sync_date_time = "2017-01-01T00:02:49.3205976-08:00",
	application_version = "Application Version value",
	management_sdk_version = "Management Sdk Version value",
	platform_version = "Platform Version value",
	device_type = "Device Type value",
	device_tag = "Device Tag value",
	device_name = "Device Name value",
	flagged_reasons = [
		ManagedAppFlaggedReason.RootedDevice,
	],
	user_id = "User Id value",
	app_identifier = AndroidMobileAppIdentifier(
		odata_type = "microsoft.graph.androidMobileAppIdentifier",
		package_id = "Package Id value",
	),
	version = "Version value",
)

result = await graph_client.device_app_management.managed_app_registrations.post(request_body)


```