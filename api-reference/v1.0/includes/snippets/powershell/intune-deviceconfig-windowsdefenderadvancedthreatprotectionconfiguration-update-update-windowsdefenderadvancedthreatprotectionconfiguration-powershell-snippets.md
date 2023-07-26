---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	allowSampleSharing = $true
	enableExpeditedTelemetryReporting = $true
}

Update-MgDeviceManagementDeviceConfiguration -DeviceConfigurationId $deviceConfigurationId -BodyParameter $params

```