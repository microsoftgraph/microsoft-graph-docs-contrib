---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.classes.item.assignment_categories.assignment_categories_request_builder import AssignmentCategoriesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AssignmentCategoriesRequestBuilder.AssignmentCategoriesRequestBuilderGetQueryParameters(
		orderby = ["displayName"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_categories.get(request_configuration = request_configuration)


```