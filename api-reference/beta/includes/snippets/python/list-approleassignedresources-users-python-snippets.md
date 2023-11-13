---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AppRoleAssignedResourcesRequestBuilder.AppRoleAssignedResourcesRequestBuilderGetQueryParameters(
		select = ["displayName","accountEnabled","servicePrincipalType","signInAudience"],
)

request_configuration = AppRoleAssignedResourcesRequestBuilder.AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.me.app_role_assigned_resources.get(request_configuration = request_configuration)


```