---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	reportType = "cloudPcUsageCategoryReport"
	select = @(
	"ServicePlanId"
"ServicePlanName"
"UsageInsight"
)
groupBy = @(
"ServicePlanId"
"ServicePlanName"
"UsageInsight"
)
}

Get-MgDeviceManagementVirtualEndpointReportCloudPcRecommendationReport -Body $params

```