---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.policies.roleManagementPolicies.role_management_policies_request_builder import RoleManagementPoliciesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleManagementPoliciesRequestBuilder.RoleManagementPoliciesRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'",
)

request_configuration = RoleManagementPoliciesRequestBuilder.RoleManagementPoliciesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policies.get(request_configuration = request_configuration)


```