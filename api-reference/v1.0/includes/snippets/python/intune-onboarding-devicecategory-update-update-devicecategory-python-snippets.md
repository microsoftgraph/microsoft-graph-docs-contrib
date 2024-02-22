---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_category import DeviceCategory

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceCategory(
	odata_type = "#microsoft.graph.deviceCategory",
	display_name = "Display Name value",
	description = "Description value",
)

result = await graph_client.device_management.device_categories.by_device_category_id('deviceCategory-id').patch(request_body)


```