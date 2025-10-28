---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.teams.telephone_number_management.number_assignments.number_assignments_request_builder import NumberAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = NumberAssignmentsRequestBuilder.NumberAssignmentsRequestBuilderGetQueryParameters(
		top = 100,
		skip = 200,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.teams.telephone_number_management.number_assignments.get(request_configuration = request_configuration)


```