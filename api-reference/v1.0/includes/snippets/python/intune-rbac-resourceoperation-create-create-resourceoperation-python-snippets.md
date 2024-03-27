---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.resource_operation import ResourceOperation

graph_client = GraphServiceClient(credentials, scopes)

request_body = ResourceOperation(
	odata_type = "#microsoft.graph.resourceOperation",
	resource_name = "Resource Name value",
	action_name = "Action Name value",
	description = "Description value",
)

result = await graph_client.device_management.resource_operations.post(request_body)


```