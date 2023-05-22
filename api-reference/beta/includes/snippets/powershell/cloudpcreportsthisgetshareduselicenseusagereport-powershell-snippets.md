---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	reportName = "SharedUseLicenseUsageReport"
	filter = "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'"
	select = @(
		"ServicePlanId"
		"LicenseCount"
		"ClaimedLicenseCount"
		"DateTimeUTC"
	)
	skip = 0
	top = 100
}

Get-MgDeviceManagementVirtualEndpointReportSharedUseLicenseUsageReport -BodyParameter $params

```