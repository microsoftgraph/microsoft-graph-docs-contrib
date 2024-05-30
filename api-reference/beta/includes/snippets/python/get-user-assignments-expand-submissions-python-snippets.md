---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.users.item.assignments.assignments_request_builder import AssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentsRequestBuilder.AssignmentsRequestBuilderGetQueryParameters(
		expand = ["submissions"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.users.by_education_user_id('educationUser-id').assignments.get(request_configuration = request_configuration)


```