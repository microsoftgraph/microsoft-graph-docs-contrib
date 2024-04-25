---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Actions

$params = @{
	reportName = "cloudPcUsageCategoryReports"
	top = 50
	skip = 0
	search = ""
	filter = ""
	select = @(
	"CloudPcId"
"ManagedDeviceName"
"UserPrincipalName"
"UsageInsight"
"CurrentSize"
"RecommendedSize"
"UsageInHour"
"DevicePerfSummary"
)
orderBy = @(
"ManagedDeviceName"
)
}

Get-MgBetaDeviceManagementVirtualEndpointReportCloudPcRecommendationReport -BodyParameter $params

```