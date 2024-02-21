---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ios_lob_app import IosLobApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.ios_device_type import IosDeviceType
from msgraph.generated.models.ios_minimum_operating_system import IosMinimumOperatingSystem

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosLobApp(
	odata_type = "#microsoft.graph.iosLobApp",
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
	committed_content_version = "Committed Content Version value",
	file_name = "File Name value",
	size = 4,
	bundle_id = "Bundle Id value",
	applicable_device_type = IosDeviceType(
		odata_type = "microsoft.graph.iosDeviceType",
		i_pad = True,
		i_phone_and_i_pod = True,
	),
	minimum_supported_operating_system = IosMinimumOperatingSystem(
		odata_type = "microsoft.graph.iosMinimumOperatingSystem",
		v8_0 = True,
		v9_0 = True,
		v10_0 = True,
		v11_0 = True,
		v12_0 = True,
		v13_0 = True,
		v14_0 = True,
		v15_0 = True,
	),
	expiration_date_time = "2016-12-31T23:57:57.2481234-08:00",
	version_number = "Version Number value",
	build_number = "Build Number value",
)

result = await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body)


```