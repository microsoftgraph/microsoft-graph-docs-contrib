---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceAppManagement(
	odata_type = "#microsoft.graph.deviceAppManagement",
)

result = await graph_client.device_app_management.patch(request_body)


```