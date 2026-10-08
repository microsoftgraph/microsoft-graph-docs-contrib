---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.report.retrieve_cloud_pc_client_app_usage_report.retrieve_cloud_pc_client_app_usage_report_post_request_body import RetrieveCloudPcClientAppUsageReportPostRequestBody
from msgraph_beta.generated.models.cloud_pc_client_app_usage_report_type import CloudPcClientAppUsageReportType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetrieveCloudPcClientAppUsageReportPostRequestBody(
	filter = "",
	report_type = CloudPcClientAppUsageReportType.MicrosoftRemoteDesktopClientUsageReport,
	select = [
		"UPN",
		"LastSignOn",
		"DaysWithUsage",
	],
	search = "",
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.report.retrieve_cloud_pc_client_app_usage_report.post(request_body)


```