---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Actions

$params = @{
	filter = "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'"
	select = @(
		"RoundTripTimeInMs"
		"AvailableBandwidthInMBps"
		"SignInDateTime"
	)
	skip = 0
	top = 50
}

Get-MgBetaDeviceManagementVirtualEndpointReportRawRemoteConnectionReport -BodyParameter $params

```