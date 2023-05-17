---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	reportName = "TotalAggregatedRemoteConnectionReports"
	select = @(
		"CloudPcId"
		"ManagedDeviceName"
		"UserPrincipalName"
		"DaysSinceLastSignIn"
		"TotalUsageInHour"
	)
}

New-MgDeviceManagementVirtualEndpointReportExportJob -BodyParameter $params

```