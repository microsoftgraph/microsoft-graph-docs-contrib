---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcExportJob()
request_body.reportname(CloudPcReportName.TotalAggregatedRemoteConnectionReports('cloudpcreportname.totalaggregatedremoteconnectionreports'))

request_body.Select(['CloudPcId', 'ManagedDeviceName', 'UserPrincipalName', 'DaysSinceLastSignIn', 'TotalUsageInHour', ])




result = await client.device_management.virtual_endpoint.reports.export_jobs.post(request_body = request_body)


```