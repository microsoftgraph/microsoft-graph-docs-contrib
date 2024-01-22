---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamsAppSettings(
	odata_type = "#microsoft.graph.teamsAppSettings",
	allow_user_requests_for_app_access = True,
)

result = await graph_client.teamwork.teams_app_settings.patch(request_body)


```