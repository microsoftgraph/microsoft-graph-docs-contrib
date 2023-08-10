---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetDailyAggregatedRemoteConnectionReportsPostRequestBody()
request_body.filter = 'CloudPcId eq \'5db15afe-025d-4f1b-b43a-d0554b63ffff\' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 '

request_body.search = 'abc0907'

request_body.Select(['EventDateTime', 'CloudPcId', 'ManagedDeviceName', 'UsageInHour', 'RoundTripTimeInMsP50', 'AvailableBandwidthInMBpsP50', 'RemoteSignInTimeInSecP50', 'UserPrincipalName', ])

request_body.Skip = 0

request_body.Top = 25




await client.device_management.virtual_endpoint.reports.get_daily_aggregated_remote_connection_reports.post(request_body = request_body)


```