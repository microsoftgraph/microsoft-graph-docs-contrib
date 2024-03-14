---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.web_app import WebApp
from msgraph.generated.models.mime_content import MimeContent

graph_client = GraphServiceClient(credentials, scopes)

request_body = WebApp(
	odata_type = "#microsoft.graph.webApp",
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
	app_url = "https://example.com/appUrl/",
	use_managed_browser = True,
)

result = await graph_client.device_app_management.mobile_apps.post(request_body)


```