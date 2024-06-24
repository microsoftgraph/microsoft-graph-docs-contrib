---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.role_management.directory.role_assignments.item.unified_role_assignment_item_request_builder import UnifiedRoleAssignmentItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UnifiedRoleAssignmentItemRequestBuilder.UnifiedRoleAssignmentItemRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignments.by_unified_role_assignment_id('unifiedRoleAssignment-id').get(request_configuration = request_configuration)


```