---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ApplicationsWithAppIdRequestBuilder.ApplicationsWithAppIdRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","requiredResourceAccess"],
)

request_configuration = ApplicationsWithAppIdRequestBuilder.ApplicationsWithAppIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.applications_with_app_id("{appId}").get(request_configuration = request_configuration)


```