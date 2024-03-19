---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.applications(appId='{appId}').applications_with_app_id_request_builder import ApplicationsWithAppIdRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ApplicationsWithAppIdRequestBuilder.ApplicationsWithAppIdRequestBuilderGetQueryParameters(
		select = ["id","appId","displayName","requiredResourceAccess"],
)

request_configuration = ApplicationsWithAppIdRequestBuilder.ApplicationsWithAppIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.applications_with_app_id("{appId}").get(request_configuration = request_configuration)


```