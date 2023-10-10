---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = RoleDefinitionsRequestBuilder.RoleDefinitionsRequestBuilderGetQueryParameters(
		filter = "isPrivileged eq true",
)

request_configuration = RoleDefinitionsRequestBuilder.RoleDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_definitions.get(request_configuration = request_configuration)


```