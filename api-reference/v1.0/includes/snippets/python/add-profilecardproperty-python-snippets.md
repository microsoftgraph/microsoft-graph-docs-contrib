---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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