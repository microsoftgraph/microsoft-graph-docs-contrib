---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_microsoft_edge_app import WindowsMicrosoftEdgeApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.mobile_app_publishing_state import MobileAppPublishingState
from msgraph.generated.models.microsoft_edge_channel import MicrosoftEdgeChannel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsMicrosoftEdgeApp(
	odata_type = "#microsoft.graph.windowsMicrosoftEdgeApp",
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
	channel = MicrosoftEdgeChannel.Beta,
	display_language_locale = "Display Language Locale value",
)

result = await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body)


```