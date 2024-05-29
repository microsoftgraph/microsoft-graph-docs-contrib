---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignment_categories.assignment_categories_request_builder import AssignmentCategoriesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentCategoriesRequestBuilder.AssignmentCategoriesRequestBuilderGetQueryParameters(
		orderby = ["displayName"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_categories.get(request_configuration = request_configuration)


```