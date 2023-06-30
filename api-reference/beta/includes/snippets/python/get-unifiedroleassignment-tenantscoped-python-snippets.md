---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TransitiveRoleAssignmentsRequestBuilder.TransitiveRoleAssignmentsRequestBuilderGetQueryParameters(
		count = true,
		filter = "principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516' and directoryScopeId eq '/administrativeUnits/26e79164-0c5c-4281-8c5b-be7bc7809fb2'",
)

request_configuration = TransitiveRoleAssignmentsRequestBuilder.TransitiveRoleAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)


result = await client.role_management.directory.transitive_role_assignments.get(request_configuration = request_configuration)


```