---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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