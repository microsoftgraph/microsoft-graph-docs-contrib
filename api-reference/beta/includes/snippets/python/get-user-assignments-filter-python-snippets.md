---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.users.item.assignments.assignments_request_builder import AssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetQueryParameters(
		filter = "dueDateTime eq 2050-05-18T17:00:00Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.me.assignments.get(request_configuration = request_configuration)


```