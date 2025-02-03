---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_daily_aggregated_remote_connection_reports.get_daily_aggregated_remote_connection_reports_post_request_body import GetDailyAggregatedRemoteConnectionReportsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetDailyAggregatedRemoteConnectionReportsPostRequestBody(
	filter = "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ",
	search = "abc0907",
	select = [
		"EventDateTime",
		"CloudPcId",
		"ManagedDeviceName",
		"UsageInHour",
		"RoundTripTimeInMsP50",
		"AvailableBandwidthInMBpsP50",
		"RemoteSignInTimeInSecP50",
		"UserPrincipalName",
	],
	skip = 0,
	top = 25,
)

await graph_client.device_management.virtual_endpoint.reports.get_daily_aggregated_remote_connection_reports.post(request_body)


```