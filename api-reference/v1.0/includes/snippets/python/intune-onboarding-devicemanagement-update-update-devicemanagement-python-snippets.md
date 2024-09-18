---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management import DeviceManagement
from msgraph.generated.models.intune_brand import IntuneBrand
from msgraph.generated.models.rgb_color import RgbColor
from msgraph.generated.models.mime_content import MimeContent

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagement(
	odata_type = "#microsoft.graph.deviceManagement",
	intune_brand = IntuneBrand(
		odata_type = "microsoft.graph.intuneBrand",
		display_name = "Display Name value",
		theme_color = RgbColor(
			odata_type = "microsoft.graph.rgbColor",
			r = 1,
			g = 1,
			b = 1,
		),
		show_logo = True,
		light_background_logo = MimeContent(
			odata_type = "microsoft.graph.mimeContent",
			type = "Type value",
			value = base64.urlsafe_b64decode("dmFsdWU="),
		),
		dark_background_logo = MimeContent(
			odata_type = "microsoft.graph.mimeContent",
			type = "Type value",
			value = base64.urlsafe_b64decode("dmFsdWU="),
		),
		show_name_next_to_logo = True,
		show_display_name_next_to_logo = True,
		contact_i_t_name = "Contact ITName value",
		contact_i_t_phone_number = "Contact ITPhone Number value",
		contact_i_t_email_address = "Contact ITEmail Address value",
		contact_i_t_notes = "Contact ITNotes value",
		online_support_site_url = "https://example.com/onlineSupportSiteUrl/",
		online_support_site_name = "Online Support Site Name value",
		privacy_url = "https://example.com/privacyUrl/",
	),
)

result = await graph_client.device_management.patch(request_body)


```