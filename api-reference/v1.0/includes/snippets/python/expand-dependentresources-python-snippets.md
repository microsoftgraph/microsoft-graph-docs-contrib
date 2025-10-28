---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.item.resources.item.education_assignment_resource_item_request_builder import EducationAssignmentResourceItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = EducationAssignmentResourceItemRequestBuilder.EducationAssignmentResourceItemRequestBuilderGetQueryParameters(
		expand = ["dependentResources"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').resources.by_education_assignment_resource_id('educationAssignmentResource-id').get(request_configuration = request_configuration)


```