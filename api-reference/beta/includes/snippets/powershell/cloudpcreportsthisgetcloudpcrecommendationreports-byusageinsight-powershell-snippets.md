---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Actions

$params = @{
	reportName = "cloudPcUsageCategoryReports"
	select = @(
		"UsageInsight"
	)
	groupBy = @(
		"UsageInsight"
	)
	filter = ""
}

Get-MgBetaDeviceManagementVirtualEndpointReportCloudPcRecommendationReport -BodyParameter $params

```