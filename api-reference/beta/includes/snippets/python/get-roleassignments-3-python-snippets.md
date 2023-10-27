---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = "appScopeId eq '/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'",
		expand = ["principal"],
)

request_configuration = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.entitlement_management.role_assignments.get(request_configuration = request_configuration)


```