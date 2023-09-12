---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = WindowsInformationProtectionAppLearningSummary(
	odata_type = "#microsoft.graph.windowsInformationProtectionAppLearningSummary",
	application_name = "Application Name value",
	application_type = ApplicationType.Desktop,
	device_count = 11,
)

result = await graph_client.device_management.window_information_protection_app_learning_summaries.by_window_information_protection_app_learning_summarie_id('windowsInformationProtectionAppLearningSummary-id').patch(body = request_body)


```