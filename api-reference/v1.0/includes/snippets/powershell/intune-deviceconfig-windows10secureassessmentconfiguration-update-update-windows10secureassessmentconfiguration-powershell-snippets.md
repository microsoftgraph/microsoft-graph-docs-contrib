---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.windows10SecureAssessmentConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	launchUri = "Launch Uri value"
	configurationAccount = "Configuration Account value"
	allowPrinting = $true
	allowScreenCapture = $true
	allowTextSuggestion = $true
}

Update-MgDeviceManagementDeviceConfiguration -DeviceConfigurationId $deviceConfigurationId -BodyParameter $params

```