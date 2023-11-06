---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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