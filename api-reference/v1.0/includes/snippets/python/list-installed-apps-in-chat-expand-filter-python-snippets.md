---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = InstalledAppsRequestBuilder.InstalledAppsRequestBuilderGetQueryParameters(
		expand = ["teamsApp","teamsAppDefinition"],
		filter = "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'",
)

request_configuration = InstalledAppsRequestBuilder.InstalledAppsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.chats.by_chat_id('chat-id').installed_apps.get(request_configuration = request_configuration)


```