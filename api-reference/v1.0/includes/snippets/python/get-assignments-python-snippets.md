---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.assignments_request_builder import AssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetQueryParameters(
		filter = "status eq 'assigned'",
)

request_configuration = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.get(request_configuration = request_configuration)


```