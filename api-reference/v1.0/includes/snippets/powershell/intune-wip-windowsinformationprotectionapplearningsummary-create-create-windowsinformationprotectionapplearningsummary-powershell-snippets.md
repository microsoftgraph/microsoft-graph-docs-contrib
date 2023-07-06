---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.windowsInformationProtectionAppLearningSummary"
	applicationName = "Application Name value"
	applicationType = "desktop"
	deviceCount = 11
}

New-MgDeviceManagementWindowInformationProtectionAppLearningSummary -BodyParameter $params

```