---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.policies.role_management_policy_assignments.role_management_policy_assignments_request_builder import RoleManagementPolicyAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RoleManagementPolicyAssignmentsRequestBuilder.RoleManagementPolicyAssignmentsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group' and roleDefinitionId eq 'owner'",
		expand = ["policy($expand=rules)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policy_assignments.get(request_configuration = request_configuration)


```