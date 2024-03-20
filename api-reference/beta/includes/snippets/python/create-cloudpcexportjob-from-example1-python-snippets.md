---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_export_job import CloudPcExportJob

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcExportJob(
	report_name = CloudPcReportName.TotalAggregatedRemoteConnectionReports,
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"DaysSinceLastSignIn",
		"TotalUsageInHour",
	],
)

result = await graph_client.device_management.virtual_endpoint.reports.export_jobs.post(request_body)


```