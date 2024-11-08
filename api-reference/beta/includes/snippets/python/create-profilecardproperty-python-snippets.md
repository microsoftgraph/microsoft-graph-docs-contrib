---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.profile_card_property import ProfileCardProperty
from msgraph_beta.generated.models.profile_card_annotation import ProfileCardAnnotation
from msgraph_beta.generated.models.display_name_localization import DisplayNameLocalization
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProfileCardProperty(
	directory_property_name = "CustomAttribute1",
	annotations = [
		ProfileCardAnnotation(
			display_name = "Cost Center",
			localizations = [
				DisplayNameLocalization(
					language_tag = "ru",
					display_name = "центр затрат",
				),
			],
		),
	],
)

result = await graph_client.admin.people.profile_card_properties.post(request_body)


```