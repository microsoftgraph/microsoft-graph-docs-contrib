---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.virtualendpoint.reports.get_total_aggregated_remote_connection_reports.get_total_aggregated_remote_connection_reports_post_request_body import GetTotalAggregatedRemoteConnectionReportsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetTotalAggregatedRemoteConnectionReportsPostRequestBody(
	top = 25,
	skip = 0,
	filter = "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)",
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"TotalUsageInHour",
		"DaysSinceLastSignIn",
	],
)

await graph_client.device_management.virtual_endpoint.reports.get_total_aggregated_remote_connection_reports.post(request_body)


```