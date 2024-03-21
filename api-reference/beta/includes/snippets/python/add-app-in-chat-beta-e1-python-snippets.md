---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.teams_app_installation import TeamsAppInstallation

graph_client = GraphServiceClient(credentials, scopes)

request_body = TeamsAppInstallation(
	additional_data = {
			"teams_app@odata_bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
	}
)

result = await graph_client.chats.by_chat_id('chat-id').installed_apps.post(request_body)


```