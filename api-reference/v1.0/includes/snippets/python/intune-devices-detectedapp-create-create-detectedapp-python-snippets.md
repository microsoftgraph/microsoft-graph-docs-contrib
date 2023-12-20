---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DetectedApp(
	odata_type = "#microsoft.graph.detectedApp",
	display_name = "Display Name value",
	version = "Version value",
	size_in_byte = 10,
	device_count = 11,
	publisher = "Publisher value",
	platform = DetectedAppPlatformType.Windows,
)

result = await graph_client.device_management.detected_apps.post(request_body)


```