---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_total_aggregated_remote_connection_reports.get_total_aggregated_remote_connection_reports_post_request_body import GetTotalAggregatedRemoteConnectionReportsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetTotalAggregatedRemoteConnectionReportsPostRequestBody(
	top = 25,
	skip = 0,
	filter = "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)",
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"TotalUsageInHour",
		"LastActiveTime",
		"PcType",
		"CreatedDate",
	],
)

await graph_client.device_management.virtual_endpoint.reports.get_total_aggregated_remote_connection_reports.post(request_body)


```