---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.end_user_settings import EndUserSettings
from msgraph_beta.generated.models.access_package_suggestion_related_people_insight_level import AccessPackageSuggestionRelatedPeopleInsightLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EndUserSettings(
	odata_type = "#microsoft.graph.endUserSettings",
	related_people_insight_level = AccessPackageSuggestionRelatedPeopleInsightLevel.CountAndNames,
	show_approver_details_to_members = True,
)

result = await graph_client.identity_governance.entitlement_management.control_configurations.by_control_configuration_id('controlConfiguration-id').put(request_body)


```