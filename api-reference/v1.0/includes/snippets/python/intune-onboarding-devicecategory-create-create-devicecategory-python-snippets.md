---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceCategory(
	odata_type = "#microsoft.graph.deviceCategory",
	display_name = "Display Name value",
	description = "Description value",
)

result = await graph_client.device_management.device_categories.post(request_body)


```