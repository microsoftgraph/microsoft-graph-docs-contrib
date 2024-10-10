---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_shared_use_license_usage_report.get_shared_use_license_usage_report_post_request_body import GetSharedUseLicenseUsageReportPostRequestBody
from msgraph_beta.generated.models.cloud_pc_report_name import CloudPcReportName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetSharedUseLicenseUsageReportPostRequestBody(
	report_name = CloudPcReportName.SharedUseLicenseUsageReport,
	filter = "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'",
	select = [
		"ServicePlanId",
		"LicenseCount",
		"ClaimedLicenseCount",
		"DateTimeUTC",
	],
	skip = 0,
	top = 100,
)

await graph_client.device_management.virtual_endpoint.reports.get_shared_use_license_usage_report.post(request_body)


```