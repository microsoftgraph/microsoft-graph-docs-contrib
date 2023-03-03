---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	Top = 25
	Skip = 0
	Filter = "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)"
	Select = @(
		"CloudPcId"
		"ManagedDeviceName"
		"UserPrincipalName"
		"TotalUsageInHour"
		"DaysSinceLastSignIn"
	)
}

Get-MgDeviceManagementVirtualEndpointReportTotalAggregatedRemoteConnectionReport -BodyParameter $params

```