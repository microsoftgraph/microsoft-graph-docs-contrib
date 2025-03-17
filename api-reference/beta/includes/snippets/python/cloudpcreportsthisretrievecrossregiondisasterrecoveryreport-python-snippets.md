---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.retrieve_cross_region_disaster_recovery_report.retrieve_cross_region_disaster_recovery_report_post_request_body import RetrieveCrossRegionDisasterRecoveryReportPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetrieveCrossRegionDisasterRecoveryReportPostRequestBody(
	filter = "DisasterRecoveryStatus eq 'Active outage'",
	select = [
		"Id",
		"CloudPcId",
		"UserId",
		"UserSettingId",
		"DeviceId",
		"CloudPCDeviceDisplayName",
		"UserPrincipalName",
		"IsCrossRegionEnabled",
		"CrossRegionHealthStatus",
		"LicenseType",
		"DisasterRecoveryStatus",
		"CurrentRestorePointDateTime",
		"ActivationExpirationDateTime",
	],
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.reports.retrieve_cross_region_disaster_recovery_report.post(request_body)


```