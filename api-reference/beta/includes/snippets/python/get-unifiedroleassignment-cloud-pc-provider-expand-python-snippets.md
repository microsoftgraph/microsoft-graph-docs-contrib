---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.role_management.cloud_p_c.role_assignments.item.unified_role_assignment_multiple_item_request_builder import UnifiedRoleAssignmentMultipleItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = UnifiedRoleAssignmentMultipleItemRequestBuilder.UnifiedRoleAssignmentMultipleItemRequestBuilderGetQueryParameters(
		expand = ["roleDefinition"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.cloud_p_c.role_assignments.by_unified_role_assignment_multiple_id('unifiedRoleAssignmentMultiple-id').get(request_configuration = request_configuration)


```