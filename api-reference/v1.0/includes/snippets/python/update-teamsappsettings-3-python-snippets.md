---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamsAppSettings(
	odata_type = "#microsoft.graph.teamsAppSettings",
	is_user_personal_scope_resource_specific_consent_enabled = True,
)

result = await graph_client.teamwork.teams_app_settings.patch(request_body)


```