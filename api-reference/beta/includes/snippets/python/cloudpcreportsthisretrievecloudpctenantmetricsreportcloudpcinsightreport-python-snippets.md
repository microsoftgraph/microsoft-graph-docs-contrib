---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.retrieve_cloud_pc_tenant_metrics_report.retrieve_cloud_pc_tenant_metrics_report_post_request_body import RetrieveCloudPcTenantMetricsReportPostRequestBody
from msgraph_beta.generated.models.cloud_p_c_performance_report_name import CloudPCPerformanceReportName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetrieveCloudPcTenantMetricsReportPostRequestBody(
	report_name = CloudPCPerformanceReportName.CloudPcInsightReport,
	filter = "",
	select = [
		"ManagedDeviceName",
		"DeviceId",
		"ClientOS",
		"ClientVersion",
		"MultimediaRedirectVersion",
		"TeamsClientVersion",
		"HostOSVersion",
		"HostSxSStackVersion",
		"HostAgentVersion",
		"PolicyName",
		"UserSettingName",
		"HostRegion",
		"AzureNetworkConnectName",
	],
	search = "",
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.reports.retrieve_cloud_pc_tenant_metrics_report.post(request_body)


```