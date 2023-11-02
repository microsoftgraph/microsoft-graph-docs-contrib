---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = DeviceManagementReports(
	odata_type = "#microsoft.graph.deviceManagementReports",
)

result = await graph_client.device_management.reports.patch(body = request_body)


```