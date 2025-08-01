---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.role_management.directory.role_assignment_schedule_requests.role_assignment_schedule_requests_request_builder import RoleAssignmentScheduleRequestsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RoleAssignmentScheduleRequestsRequestBuilder.RoleAssignmentScheduleRequestsRequestBuilderGetQueryParameters(
		select = ["principalId","action","roleDefinitionId"],
		expand = ["roleDefinition","activatedUsing","principal","targetSchedule"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignment_schedule_requests.get(request_configuration = request_configuration)


```