---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagementReports(
	odata_type = "#microsoft.graph.deviceManagementReports",
)

result = await graph_client.device_management.reports.patch(request_body)


```