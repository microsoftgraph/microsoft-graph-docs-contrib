---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.item.categories.categories_request_builder import CategoriesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CategoriesRequestBuilder.CategoriesRequestBuilderGetQueryParameters(
		filter = "id eq '74b03ab5-5832-4f99-89f5-d52da13d93f7'",
)

request_configuration = CategoriesRequestBuilder.CategoriesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').categories.get(request_configuration = request_configuration)


```