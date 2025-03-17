---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_management_reports import DeviceManagementReports
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceManagementReports(
	odata_type = "#microsoft.graph.deviceManagementReports",
)

result = await graph_client.device_management.reports.patch(request_body)


```