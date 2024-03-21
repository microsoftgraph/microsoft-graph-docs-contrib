---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_export_job import CloudPcExportJob

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcExportJob(
	report_name = CloudPcReportName.RemoteConnectionQualityReports,
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
		"EventDateTime",
	],
	filter = "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'",
)

result = await graph_client.device_management.virtual_endpoint.reports.export_jobs.post(request_body)


```