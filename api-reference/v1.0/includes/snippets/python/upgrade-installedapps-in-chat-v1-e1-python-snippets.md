---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.installedapps.item.upgrade.upgrade_post_request_body import UpgradePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpgradePostRequestBody(
)

await graph_client.chats.by_chat_id('chat-id').installed_apps.by_teams_app_installation_id('teamsAppInstallation-id').upgrade.post(request_body)


```