---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosVppEBook(
	odata_type = "#microsoft.graph.iosVppEBook",
	display_name = "Display Name value",
	description = "Description value",
	publisher = "Publisher value",
	published_date_time = "2016-12-31T23:58:16.1180489-08:00",
	large_cover = MimeContent(
		odata_type = "microsoft.graph.mimeContent",
		type = "Type value",
		value = base64.urlsafe_b64decode("dmFsdWU="),
	),
	information_url = "https://example.com/informationUrl/",
	privacy_information_url = "https://example.com/privacyInformationUrl/",
	vpp_token_id = UUID("9148ac60-ac60-9148-60ac-489160ac4891"),
	apple_id = "Apple Id value",
	vpp_organization_name = "Vpp Organization Name value",
	genres = [
		"Genres value",
	],
	language = "Language value",
	seller = "Seller value",
	total_license_count = 1,
	used_license_count = 0,
)

result = await graph_client.device_app_management.managed_e_books.post(request_body)


```