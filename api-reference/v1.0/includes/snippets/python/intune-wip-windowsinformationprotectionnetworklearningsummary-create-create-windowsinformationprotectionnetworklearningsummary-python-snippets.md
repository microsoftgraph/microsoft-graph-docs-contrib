---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsInformationProtectionNetworkLearningSummary(
	odata_type = "#microsoft.graph.windowsInformationProtectionNetworkLearningSummary",
	url = "Url value",
	device_count = 11,
)

result = await graph_client.device_management.windows_information_protection_network_learning_summaries.post(request_body)


```