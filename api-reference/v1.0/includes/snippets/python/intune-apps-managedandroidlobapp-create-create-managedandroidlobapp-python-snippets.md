---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.managed_android_lob_app import ManagedAndroidLobApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.android_minimum_operating_system import AndroidMinimumOperatingSystem

graph_client = GraphServiceClient(credentials, scopes)

request_body = ManagedAndroidLobApp(
	odata_type = "#microsoft.graph.managedAndroidLobApp",
	display_name = "Display Name value",
	description = "Description value",
	publisher = "Publisher value",
	large_icon = MimeContent(
		odata_type = "microsoft.graph.mimeContent",
		type = "Type value",
		value = base64.urlsafe_b64decode("dmFsdWU="),
	),
	is_featured = True,
	privacy_information_url = "https://example.com/privacyInformationUrl/",
	information_url = "https://example.com/informationUrl/",
	owner = "Owner value",
	developer = "Developer value",
	notes = "Notes value",
	publishing_state = MobileAppPublishingState.Processing,
	app_availability = ManagedAppAvailability.LineOfBusiness,
	version = "Version value",
	committed_content_version = "Committed Content Version value",
	file_name = "File Name value",
	size = 4,
	package_id = "Package Id value",
	minimum_supported_operating_system = AndroidMinimumOperatingSystem(
		odata_type = "microsoft.graph.androidMinimumOperatingSystem",
		v4_0 = True,
		v4_0_3 = True,
		v4_1 = True,
		v4_2 = True,
		v4_3 = True,
		v4_4 = True,
		v5_0 = True,
		v5_1 = True,
		v6_0 = True,
		v7_0 = True,
		v7_1 = True,
		v8_0 = True,
		v8_1 = True,
		v9_0 = True,
		v10_0 = True,
		v11_0 = True,
	),
	version_name = "Version Name value",
	version_code = "Version Code value",
)

result = await graph_client.device_app_management.mobile_apps.post(request_body)


```