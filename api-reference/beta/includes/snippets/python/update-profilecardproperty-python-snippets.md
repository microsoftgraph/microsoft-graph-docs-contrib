---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ProfileCardProperty(
	annotations = [
		ProfileCardAnnotation(
			display_name = "Cost Center",
			localizations = [
				DisplayNameLocalization(
					language_tag = "nb-NO",
					display_name = "Kostnadssenter",
				),
			],
		),
	],
)

result = await graph_client.admin.people.profile_card_properties.by_profile_card_property_id('profileCardProperty-id').patch(request_body)


```