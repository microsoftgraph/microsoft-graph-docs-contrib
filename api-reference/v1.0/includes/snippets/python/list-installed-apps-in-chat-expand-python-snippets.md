---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.chats.item.installed_apps.installed_apps_request_builder import InstalledAppsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = InstalledAppsRequestBuilder.InstalledAppsRequestBuilderGetQueryParameters(
		expand = ["teamsAppDefinition($expand=bot)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.chats.by_chat_id('chat-id').installed_apps.get(request_configuration = request_configuration)


```