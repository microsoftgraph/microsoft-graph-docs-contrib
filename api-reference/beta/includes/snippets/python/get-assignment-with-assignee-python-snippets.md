---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.cloud_licensing.assignments.item.assignment_item_request_builder import AssignmentItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AssignmentItemRequestBuilder.AssignmentItemRequestBuilderGetQueryParameters(
		expand = ["assignedTo"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.cloud_licensing.assignments.by_assignment_id('assignment-id').get(request_configuration = request_configuration)


```