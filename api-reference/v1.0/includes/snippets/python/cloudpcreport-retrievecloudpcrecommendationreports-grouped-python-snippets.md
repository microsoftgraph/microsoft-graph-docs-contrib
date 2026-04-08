---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.virtualendpoint.report.retrieve_cloud_pc_recommendation_reports.retrieve_cloud_pc_recommendation_reports_post_request_body import RetrieveCloudPcRecommendationReportsPostRequestBody
from msgraph.generated.models.cloud_pc_recommendation_report_type import CloudPcRecommendationReportType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetrieveCloudPcRecommendationReportsPostRequestBody(
	report_type = CloudPcRecommendationReportType.CloudPcUsageCategoryReport,
	select = [
		"ServicePlanId",
		"ServicePlanName",
		"UsageInsight",
	],
	group_by = [
		"ServicePlanId",
		"ServicePlanName",
		"UsageInsight",
	],
)

await graph_client.device_management.virtual_endpoint.report.retrieve_cloud_pc_recommendation_reports.post(request_body)


```