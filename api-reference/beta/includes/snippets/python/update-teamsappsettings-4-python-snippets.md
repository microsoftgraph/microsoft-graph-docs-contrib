---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.teams_app_settings import TeamsAppSettings
from msgraph_beta.generated.models.custom_app_settings import CustomAppSettings
from msgraph_beta.generated.models.app_development_platforms import AppDevelopmentPlatforms
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamsAppSettings(
	odata_type = "#microsoft.graph.teamsAppSettings",
	custom_app_settings = CustomAppSettings(
		developer_tools_for_showing_app_usage_metrics = AppDevelopmentPlatforms.DeveloperPortal,
	),
)

result = await graph_client.teamwork.teams_app_settings.patch(request_body)


```