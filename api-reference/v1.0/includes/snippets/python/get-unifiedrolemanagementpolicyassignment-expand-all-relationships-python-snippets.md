---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.policies.role_management_policy_assignments.item.unified_role_management_policy_assignment_item_request_builder import UnifiedRoleManagementPolicyAssignmentItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = UnifiedRoleManagementPolicyAssignmentItemRequestBuilder.UnifiedRoleManagementPolicyAssignmentItemRequestBuilderGetQueryParameters(
		expand = ["policy($expand=rules)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.role_management_policy_assignments.by_unified_role_management_policy_assignment_id('unifiedRoleManagementPolicyAssignment-id').get(request_configuration = request_configuration)


```