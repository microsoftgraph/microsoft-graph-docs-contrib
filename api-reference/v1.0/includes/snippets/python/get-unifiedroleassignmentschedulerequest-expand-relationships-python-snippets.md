---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.role_management.directory.role_assignment_schedule_requests.item.unified_role_assignment_schedule_request_item_request_builder import UnifiedRoleAssignmentScheduleRequestItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = UnifiedRoleAssignmentScheduleRequestItemRequestBuilder.UnifiedRoleAssignmentScheduleRequestItemRequestBuilderGetQueryParameters(
		select = ["principalId","action","roleDefinitionId"],
		expand = ["roleDefinition","activatedUsing","principal","targetSchedule"],
)

request_configuration = UnifiedRoleAssignmentScheduleRequestItemRequestBuilder.UnifiedRoleAssignmentScheduleRequestItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignment_schedule_requests.by_unified_role_assignment_schedule_request_id('unifiedRoleAssignmentScheduleRequest-id').get(request_configuration = request_configuration)


```