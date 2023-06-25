---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamsAppSettings()
request_body.@odata_type = '#microsoft.graph.teamsAppSettings'

request_body.allow_user_requests_for_app_access = True




result = await client.teamwork.team_app_settings.patch(request_body = request_body)


```