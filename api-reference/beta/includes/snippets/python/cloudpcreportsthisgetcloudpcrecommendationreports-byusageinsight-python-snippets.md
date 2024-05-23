---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_cloud_pc_recommendation_reports.get_cloud_pc_recommendation_reports_post_request_body import GetCloudPcRecommendationReportsPostRequestBody
from msgraph_beta.generated.models.cloud_pc_report_name import CloudPcReportName

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetCloudPcRecommendationReportsPostRequestBody(
	report_name = CloudPcReportName.CloudPcUsageCategoryReports,
	select = [
		"UsageInsight",
	],
	group_by = [
		"UsageInsight",
	],
	filter = "",
)

await graph_client.device_management.virtual_endpoint.reports.get_cloud_pc_recommendation_reports.post(request_body)


```