---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetTotalAggregatedRemoteConnectionReportsPostRequestBody()
request_body.Top = 25

request_body.Skip = 0

request_body.filter = '(TotalUsageInHour ge 40 and TotalUsageInHour le 80)'

request_body.Select(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'TotalUsageInHour', 'DaysSinceLastSignIn', ])




await client.device_management.virtual_endpoint.reports.get_total_aggregated_remote_connection_reports.post(request_body = request_body)


```