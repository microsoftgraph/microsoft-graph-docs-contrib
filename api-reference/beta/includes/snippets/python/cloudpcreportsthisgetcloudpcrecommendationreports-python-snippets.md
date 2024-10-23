---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_cloud_pc_recommendation_reports.get_cloud_pc_recommendation_reports_post_request_body import GetCloudPcRecommendationReportsPostRequestBody
from msgraph_beta.generated.models.cloud_pc_report_name import CloudPcReportName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetCloudPcRecommendationReportsPostRequestBody(
	report_name = CloudPcReportName.CloudPcUsageCategoryReports,
	top = 50,
	skip = 0,
	search = "",
	filter = "",
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"UsageInsight",
		"CurrentSize",
		"RecommendedSize",
		"UsageInHour",
		"DevicePerfSummary",
	],
	order_by = [
		"ManagedDeviceName",
	],
)

await graph_client.device_management.virtual_endpoint.reports.get_cloud_pc_recommendation_reports.post(request_body)


```