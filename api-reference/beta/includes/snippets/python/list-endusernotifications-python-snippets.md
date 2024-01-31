---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = EndUserNotificationsRequestBuilder.EndUserNotificationsRequestBuilderGetQueryParameters(
		filter = "source eq 'global'",
)

request_configuration = EndUserNotificationsRequestBuilder.EndUserNotificationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.end_user_notifications.get(request_configuration = request_configuration)


```