---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Actions

$params = @{
	filter = "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'"
	search = ""
	select = @(
	"CloudPcId"
"ManagedDeviceName"
"AvgRoundTripTimeInMsP50"
"LastConnectionRoundTripTimeInMs"
"AvgAvailableBandwidthInMBpsP50"
"LastConnectionAvailableBandWidthInMSps"
"AvgRemoteSignInTimeInSecP50"
"UDPConnectionPercentage"
"LastConnectionGateway"
"LastConnectionProtocol"
"EventDateTime"
)
skip = "0"
top = "25"
orderBy = @(
)
}

Get-MgBetaDeviceManagementVirtualEndpointReportConnectionQualityReport -BodyParameter $params

```