---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_raw_remote_connection_reports.get_raw_remote_connection_reports_post_request_body import GetRawRemoteConnectionReportsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetRawRemoteConnectionReportsPostRequestBody(
	filter = "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'",
	select = [
		"RoundTripTimeInMs",
		"AvailableBandwidthInMBps",
		"SignInDateTime",
	],
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.reports.get_raw_remote_connection_reports.post(request_body)


```