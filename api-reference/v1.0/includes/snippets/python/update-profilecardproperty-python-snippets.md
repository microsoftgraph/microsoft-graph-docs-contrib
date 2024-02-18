---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.profile_card_property import ProfileCardProperty
from msgraph.generated.models.profile_card_annotation import ProfileCardAnnotation
from msgraph.generated.models.display_name_localization import DisplayNameLocalization

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