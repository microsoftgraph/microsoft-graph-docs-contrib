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
	annotations = [
		ProfileCardAnnotation(
			display_name = "Cost Center",
			localizations = [
				DisplayNameLocalization(
					language_tag = "no",
					display_name = "Kostnadssenter",
				),
			],
		),
	],
)

result = await graph_client.admin.people.profile_card_properties.by_profile_card_property_id('profileCardProperty-id').patch(request_body)


```