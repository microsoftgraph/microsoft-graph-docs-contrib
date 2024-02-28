---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_settings import UserSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSettings(
	contribution_to_content_discovery_disabled = True,
)

result = await graph_client.me.settings.patch(request_body)


```