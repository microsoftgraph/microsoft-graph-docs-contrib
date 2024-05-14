---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.virtualendpoint.reports.get_remote_connection_historical_reports.get_remote_connection_historical_reports_post_request_body import GetRemoteConnectionHistoricalReportsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetRemoteConnectionHistoricalReportsPostRequestBody(
	filter = "CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'",
	select = [
		"SignInDateTime",
		"SignOutDateTime",
		"UsageInHour",
		"RoundTripTimeInMsP50",
		"AvailableBandwidthInMBpsP50",
		"RemoteSignInTimeInSec",
	],
	top = 25,
	skip = 0,
)

await graph_client.device_management.virtual_endpoint.reports.get_remote_connection_historical_reports.post(request_body)


```