---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.resource_operation import ResourceOperation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ResourceOperation(
	odata_type = "#microsoft.graph.resourceOperation",
	resource_name = "Resource Name value",
	action_name = "Action Name value",
	description = "Description value",
)

result = await graph_client.device_management.resource_operations.post(request_body)


```