---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	reportType = "cloudPcUsageCategoryReport"
	filter = ""
	select = @(
	"CloudPcId"
"ManagedDeviceName"
"UserPrincipalName"
"ServicePlanId"
"ServicePlanName"
"UsageInsight"
"RecommendedPlanId"
"RecommendedPlanName"
)
search = ""
skip = 0
top = 15
}

Get-MgDeviceManagementVirtualEndpointReportCloudPcRecommendationReport -Body $params

```