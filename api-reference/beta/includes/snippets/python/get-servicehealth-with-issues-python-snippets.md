---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServiceHealthItemRequestBuilder.ServiceHealthItemRequestBuilderGetQueryParameters(
		expand = ["issues"],
)

request_configuration = ServiceHealthItemRequestBuilder.ServiceHealthItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.service_announcement.health_overviews.by_service_health_id('serviceHealth-id').get(request_configuration = request_configuration)


```