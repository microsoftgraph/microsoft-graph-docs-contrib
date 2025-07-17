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
	report_name = CloudPCTroubleshootReportType.TroubleshootDetailsReport,
	select = [
		"CloudPcId",
		"ManagedDeviceName",
		"UserPrincipalName",
		"UsageInsight",
		"CurrentSize",
		"CurrentCPU",
		"CurrentRamInGB",
		"CurrentDiskInGB",
		"RecommendedSize",
		"RecommendedCPU",
		"RecommendedRamInGB",
		"RecommendedDiskInGB",
		"ProvisionPolicyName",
		"RoundTripTimeInMsAvg",
		"AvailableBandwidthInMbpsAvg",
	],
	search = "",
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.reports.retrieve_cloud_pc_troubleshoot_reports.post(request_body)


```