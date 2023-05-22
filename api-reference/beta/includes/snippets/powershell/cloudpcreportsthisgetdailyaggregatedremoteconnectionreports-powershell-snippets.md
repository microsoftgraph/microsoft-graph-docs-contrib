---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	filter = "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 "
	search = "abc0907"
	select = @(
		"EventDateTime"
		"CloudPcId"
		"ManagedDeviceName"
		"UsageInHour"
		"RoundTripTimeInMsP50"
		"AvailableBandwidthInMBpsP50"
		"RemoteSignInTimeInSecP50"
		"UserPrincipalName"
	)
	skip = "0"
	top = "25"
}

Get-MgDeviceManagementVirtualEndpointReportDailyAggregatedRemoteConnectionReport -BodyParameter $params

```