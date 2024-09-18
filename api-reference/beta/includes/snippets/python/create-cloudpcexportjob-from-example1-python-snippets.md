---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_export_job import CloudPcExportJob
from msgraph_beta.generated.models.cloud_pc_report_name import CloudPcReportName

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