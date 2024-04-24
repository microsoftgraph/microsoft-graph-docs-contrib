---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_connection_quality_reports_post_request_body import GetConnectionQualityReportsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetConnectionQualityReportsPostRequestBody(
	filter = "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'",
	search = "",
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"AvgRoundTripTimeInMsP50",
		"LastConnectionRoundTripTimeInMs",
		"AvgAvailableBandwidthInMBpsP50",
		"LastConnectionAvailableBandWidthInMSps",
		"AvgRemoteSignInTimeInSecP50",
		"UDPConnectionPercentage",
		"LastConnectionGateway",
		"LastConnectionProtocol",
		"LastActiveTime",
	],
	skip = 0,
	top = 25,
	order_by = [
	],
)

await graph_client.device_management.virtual_endpoint.reports.get_connection_quality_reports.post(request_body)


```