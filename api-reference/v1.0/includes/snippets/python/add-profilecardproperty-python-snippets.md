---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ProfileCardProperty(
	directory_property_name = "CustomAttribute1",
	annotations = [
		ProfileCardAnnotation(
			display_name = "Cost Center",
			localizations = [
				DisplayNameLocalization(
					language_tag = "ru-RU",
					display_name = "центр затрат",
				),
			],
		),
	],
)

result = await graph_client.admin.people.profile_card_properties.post(request_body)


```