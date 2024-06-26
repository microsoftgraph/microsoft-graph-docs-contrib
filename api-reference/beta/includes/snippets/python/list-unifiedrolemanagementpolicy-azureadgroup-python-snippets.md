---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.policies.role_management_policies.role_management_policies_request_builder import RoleManagementPoliciesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RoleManagementPoliciesRequestBuilder.RoleManagementPoliciesRequestBuilderGetQueryParameters(
		filter = "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'",
		expand = ["rules($select=id)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policies.get(request_configuration = request_configuration)


```