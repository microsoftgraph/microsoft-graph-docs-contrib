---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mac_o_s_lob_app import MacOSLobApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.mac_o_s_minimum_operating_system import MacOSMinimumOperatingSystem
from msgraph.generated.models.mac_o_s_lob_child_app import MacOSLobChildApp

graph_client = GraphServiceClient(credentials, scopes)

request_body = MacOSLobApp(
	odata_type = "#microsoft.graph.macOSLobApp",
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
	minimum_supported_operating_system = MacOSMinimumOperatingSystem(
		odata_type = "microsoft.graph.macOSMinimumOperatingSystem",
		v10_7 = True,
		v10_8 = True,
		v10_9 = True,
		v10_10 = True,
		v10_11 = True,
		v10_12 = True,
		v10_13 = True,
		v10_14 = True,
		v10_15 = True,
		v11_0 = True,
		v12_0 = True,
		v13_0 = True,
	),
	build_number = "Build Number value",
	version_number = "Version Number value",
	child_apps = [
		MacOSLobChildApp(
			odata_type = "microsoft.graph.macOSLobChildApp",
			bundle_id = "Bundle Id value",
			build_number = "Build Number value",
			version_number = "Version Number value",
		),
	],
	md5_hash_chunk_size = 0,
	md5_hash = [
		"Md5Hash value",
	],
	ignore_version_detection = True,
	install_as_managed = True,
)

result = await graph_client.device_app_management.mobile_apps.post(request_body)


```