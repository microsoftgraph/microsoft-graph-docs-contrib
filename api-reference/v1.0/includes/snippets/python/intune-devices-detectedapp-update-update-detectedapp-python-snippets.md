---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.detected_app import DetectedApp
from msgraph.generated.models.detected_app_platform_type import DetectedAppPlatformType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DetectedApp(
	odata_type = "#microsoft.graph.detectedApp",
	display_name = "Display Name value",
	version = "Version value",
	size_in_byte = 10,
	device_count = 11,
	publisher = "Publisher value",
	platform = DetectedAppPlatformType.Windows,
)

result = await graph_client.device_management.detected_apps.by_detected_app_id('detectedApp-id').patch(request_body)


```