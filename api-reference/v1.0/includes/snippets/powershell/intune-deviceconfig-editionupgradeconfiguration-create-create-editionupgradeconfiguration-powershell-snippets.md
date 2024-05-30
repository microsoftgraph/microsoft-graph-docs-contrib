---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.editionUpgradeConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	licenseType = "licenseFile"
	targetEdition = "windows10EnterpriseN"
	license = "License value"
	productKey = "Product Key value"
}

New-MgDeviceManagementDeviceConfiguration -BodyParameter $params

```