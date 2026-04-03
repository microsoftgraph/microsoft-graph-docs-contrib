---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.retrieve_cloud_pc_troubleshoot_reports.retrieve_cloud_pc_troubleshoot_reports_post_request_body import RetrieveCloudPcTroubleshootReportsPostRequestBody
from msgraph_beta.generated.models.cloud_p_c_troubleshoot_report_type import CloudPCTroubleshootReportType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetrieveCloudPcTroubleshootReportsPostRequestBody(
	report_name = CloudPCTroubleshootReportType.TroubleshootTenantActiveConnectionCountTrendReport,
	select = [
		"EventDateTime",
		"TotalActiveConnectionCountAvg",
		"GroupColumn",
	],
	filter = "(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')",
	top = 1000,
	skip = 0,
	group_by = [
		"GatewayRegion",
	],
)

await graph_client.device_management.virtual_endpoint.reports.retrieve_cloud_pc_troubleshoot_reports.post(request_body)


```
