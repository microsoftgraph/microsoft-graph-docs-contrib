---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management import DeviceManagement

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagement(
	odata_type = "#microsoft.graph.deviceManagement",
)

result = await graph_client.device_management.patch(request_body)


```