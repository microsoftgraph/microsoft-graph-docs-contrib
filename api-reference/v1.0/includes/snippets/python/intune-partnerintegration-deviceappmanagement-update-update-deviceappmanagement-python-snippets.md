---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceAppManagement(
	odata_type = "#microsoft.graph.deviceAppManagement",
)

result = await graph_client.device_app_management.patch(request_body)


```