---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ProfileCardProperty(
	annotations = [
		ProfileCardAnnotation(
			localizations = [
				DisplayNameLocalization(
					language_tag = "no-NB",
					display_name = "Kostnadssenter",
				),
			]
		),
	]
)

result = await graph_client.admin.people.profile_card_properties.by_profile_card_propertie_id('profileCardProperty-id').patch(body = request_body)


```