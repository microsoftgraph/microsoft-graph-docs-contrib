---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.chats.item.installedApps.installed_apps_request_builder import InstalledAppsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = InstalledAppsRequestBuilder.InstalledAppsRequestBuilderGetQueryParameters(
		select = ["consentedPermissionSet","id"],
)

request_configuration = InstalledAppsRequestBuilder.InstalledAppsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').installed_apps.get(request_configuration = request_configuration)


```