---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = "principalId eq '/ServicePrincipals/5d39cc4d-ba68-4c44-92c7-5056e3a1ce39'",
)

request_configuration = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.role_management.exchange.role_assignments.get(request_configuration = request_configuration)


```