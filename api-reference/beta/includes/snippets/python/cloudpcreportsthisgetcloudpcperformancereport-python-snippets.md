---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_cloud_pc_performance_report.get_cloud_pc_performance_report_post_request_body import GetCloudPcPerformanceReportPostRequestBody
from msgraph_beta.generated.models.cloud_p_c_performance_report_name import CloudPCPerformanceReportName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetCloudPcPerformanceReportPostRequestBody(
	report_name = CloudPCPerformanceReportName.PerformanceTrendReport,
	filter = "EventDateTime gt datetime'2023-10-13T00:00:00.000Z'",
	select = [
		"EventDateTime",
		"SlowRoundTripTimeCloudPcCount",
		"LowUdpConnectionPercentageCount",
		"NoActiveTimeConnectedCount",
		"LowActiveTimeConnectedCount",
	],
	search = "",
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.reports.get_cloud_pc_performance_report.post(request_body)


```