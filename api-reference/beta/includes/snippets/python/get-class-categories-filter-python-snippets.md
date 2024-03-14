---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignmentCategories.assignment_categories_request_builder import AssignmentCategoriesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentCategoriesRequestBuilder.AssignmentCategoriesRequestBuilderGetQueryParameters(
		filter = "id eq 'd4cb4f68-9136-48d3-9054-c1208ea274f0'",
)

request_configuration = AssignmentCategoriesRequestBuilder.AssignmentCategoriesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_categories.get(request_configuration = request_configuration)


```