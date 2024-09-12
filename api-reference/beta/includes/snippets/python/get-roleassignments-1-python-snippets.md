---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.role_management.directory.role_assignments.role_assignments_request_builder import RoleAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RoleAssignmentsRequestBuilder.RoleAssignmentsRequestBuilderGetQueryParameters(
		filter = "roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'",
		expand = ["principal"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.role_assignments.get(request_configuration = request_configuration)


```