---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.users.item.assignments.assignments_request_builder import AssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetQueryParameters(
		filter = "dueDateTime eq 2050-05-18T17:00:00Z",
)

request_configuration = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.me.assignments.get(request_configuration = request_configuration)


```