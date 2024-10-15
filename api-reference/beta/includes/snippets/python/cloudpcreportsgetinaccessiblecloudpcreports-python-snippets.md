---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_inaccessible_cloud_pc_reports.get_inaccessible_cloud_pc_reports_post_request_body import GetInaccessibleCloudPcReportsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetInaccessibleCloudPcReportsPostRequestBody(
	filter = "region eq 'westus2'",
	order_by = [
		"cloudPcId",
	],
	select = [
		"cloudPcId",
		"aadDeviceId",
		"cloudPcName",
		"userPrincipalName",
		"provisioningStatus",
		"region",
		"deviceHealthStatus",
		"deviceHealthStatusDateTime",
		"recentDeviceHealthFailureCount",
		"recentConnectionFailureCount",
		"systemStatus",
		"systemStatusDateTime",
	],
	top = 10,
	skip = 0,
)

await graph_client.device_management.virtual_endpoint.reports.get_inaccessible_cloud_pc_reports.post(request_body)


```