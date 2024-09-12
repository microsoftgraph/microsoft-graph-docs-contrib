---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.teams_app_settings import TeamsAppSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamsAppSettings(
	odata_type = "#microsoft.graph.teamsAppSettings",
	is_user_personal_scope_resource_specific_consent_enabled = True,
)

result = await graph_client.teamwork.teams_app_settings.patch(request_body)


```