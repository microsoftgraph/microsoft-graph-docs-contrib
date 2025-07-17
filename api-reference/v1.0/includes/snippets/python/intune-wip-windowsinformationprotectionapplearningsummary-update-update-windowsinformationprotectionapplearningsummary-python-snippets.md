---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_information_protection_app_learning_summary import WindowsInformationProtectionAppLearningSummary
from msgraph.generated.models.application_type import ApplicationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsInformationProtectionAppLearningSummary(
	odata_type = "#microsoft.graph.windowsInformationProtectionAppLearningSummary",
	application_name = "Application Name value",
	application_type = ApplicationType.Desktop,
	device_count = 11,
)

result = await graph_client.device_management.windows_information_protection_app_learning_summaries.by_windows_information_protection_app_learning_summary_id('windowsInformationProtectionAppLearningSummary-id').patch(request_body)


```