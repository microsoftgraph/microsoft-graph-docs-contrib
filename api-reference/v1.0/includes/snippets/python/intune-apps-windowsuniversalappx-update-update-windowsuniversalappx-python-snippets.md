---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows_universal_app_x import WindowsUniversalAppX
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.windows_minimum_operating_system import WindowsMinimumOperatingSystem

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsUniversalAppX(
	odata_type = "#microsoft.graph.windowsUniversalAppX",
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
	applicable_architectures = WindowsArchitecture.X86,
	applicable_device_types = WindowsDeviceType.Desktop,
	identity_name = "Identity Name value",
	identity_publisher_hash = "Identity Publisher Hash value",
	identity_resource_identifier = "Identity Resource Identifier value",
	is_bundle = True,
	minimum_supported_operating_system = WindowsMinimumOperatingSystem(
		odata_type = "microsoft.graph.windowsMinimumOperatingSystem",
		v8_0 = True,
		v8_1 = True,
		v10_0 = True,
	),
	identity_version = "Identity Version value",
)

result = await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body)


```