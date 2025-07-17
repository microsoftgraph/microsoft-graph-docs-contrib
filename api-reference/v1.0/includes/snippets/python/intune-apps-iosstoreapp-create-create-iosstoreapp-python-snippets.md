---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.ios_store_app import IosStoreApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.mobile_app_publishing_state import MobileAppPublishingState
from msgraph.generated.models.ios_device_type import IosDeviceType
from msgraph.generated.models.ios_minimum_operating_system import IosMinimumOperatingSystem
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IosStoreApp(
	odata_type = "#microsoft.graph.iosStoreApp",
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
	bundle_id = "Bundle Id value",
	app_store_url = "https://example.com/appStoreUrl/",
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
)

result = await graph_client.device_app_management.mobile_apps.post(request_body)


```