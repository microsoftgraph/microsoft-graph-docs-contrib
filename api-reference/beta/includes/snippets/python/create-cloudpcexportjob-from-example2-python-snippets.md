---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_export_job import CloudPcExportJob
from msgraph_beta.generated.models.cloud_pc_report_name import CloudPcReportName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcExportJob(
	report_name = CloudPcReportName.RemoteConnectionQualityReports,
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"AvgRoundTripTimeInMsP50",
		"LastConnectionRoundTripTimeInMs",
		"AvgAvailableBandwidthInMbpsP50",
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