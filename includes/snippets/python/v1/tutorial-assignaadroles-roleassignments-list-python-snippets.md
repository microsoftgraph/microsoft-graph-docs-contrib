---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.role_management.directory.role_assignments.role_assignments_request_builder import RoleAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = "principalId eq '7146daa8-1b4b-4a66-b2f7-cf593d03c8d2'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignments.get(request_configuration = request_configuration)


```