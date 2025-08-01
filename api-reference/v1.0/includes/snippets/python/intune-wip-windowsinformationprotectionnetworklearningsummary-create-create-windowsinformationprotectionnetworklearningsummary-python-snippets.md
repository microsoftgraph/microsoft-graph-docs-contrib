---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_information_protection_network_learning_summary import WindowsInformationProtectionNetworkLearningSummary
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsInformationProtectionNetworkLearningSummary(
	odata_type = "#microsoft.graph.windowsInformationProtectionNetworkLearningSummary",
	url = "Url value",
	device_count = 11,
)

result = await graph_client.device_management.windows_information_protection_network_learning_summaries.post(request_body)


```