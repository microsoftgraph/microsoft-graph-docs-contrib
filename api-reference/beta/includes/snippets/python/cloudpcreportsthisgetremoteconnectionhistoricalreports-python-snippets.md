---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_remote_connection_historical_reports.get_remote_connection_historical_reports_post_request_body import GetRemoteConnectionHistoricalReportsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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