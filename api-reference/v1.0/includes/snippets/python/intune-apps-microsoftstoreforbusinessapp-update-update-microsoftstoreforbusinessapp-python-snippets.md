---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.microsoft_store_for_business_app import MicrosoftStoreForBusinessApp
from msgraph.generated.models.mime_content import MimeContent
from msgraph.generated.models.mobile_app_publishing_state import MobileAppPublishingState
from msgraph.generated.models.microsoft_store_for_business_license_type import MicrosoftStoreForBusinessLicenseType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MicrosoftStoreForBusinessApp(
	odata_type = "#microsoft.graph.microsoftStoreForBusinessApp",
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
	used_license_count = 0,
	total_license_count = 1,
	product_key = "Product Key value",
	license_type = MicrosoftStoreForBusinessLicenseType.Online,
	package_identity_name = "Package Identity Name value",
)

result = await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body)


```