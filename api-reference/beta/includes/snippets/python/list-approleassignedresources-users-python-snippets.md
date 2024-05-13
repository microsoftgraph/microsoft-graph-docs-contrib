---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.app_role_assigned_resources.app_role_assigned_resources_request_builder import AppRoleAssignedResourcesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AppRoleAssignedResourcesRequestBuilder.AppRoleAssignedResourcesRequestBuilderGetQueryParameters(
		select = ["displayName","accountEnabled","servicePrincipalType","signInAudience"],
)

request_configuration = AppRoleAssignedResourcesRequestBuilder.AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.me.app_role_assigned_resources.get(request_configuration = request_configuration)


```