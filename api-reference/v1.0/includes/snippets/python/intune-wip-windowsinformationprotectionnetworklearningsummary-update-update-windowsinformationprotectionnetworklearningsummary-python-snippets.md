---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows_information_protection_network_learning_summary import WindowsInformationProtectionNetworkLearningSummary

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsInformationProtectionNetworkLearningSummary(
	odata_type = "#microsoft.graph.windowsInformationProtectionNetworkLearningSummary",
	url = "Url value",
	device_count = 11,
)

result = await graph_client.device_management.windows_information_protection_network_learning_summaries.by_windows_information_protection_network_learning_summary_id('windowsInformationProtectionNetworkLearningSummary-id').patch(request_body)


```