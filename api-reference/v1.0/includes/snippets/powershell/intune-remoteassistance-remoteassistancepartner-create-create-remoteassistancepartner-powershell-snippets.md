---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.remoteAssistancePartner"
	displayName = "Display Name value"
	onboardingUrl = "https://example.com/onboardingUrl/"
	onboardingStatus = "onboarding"
	lastConnectionDateTime = [System.DateTime]::Parse("2016-12-31T23:58:36.6670033-08:00")
}

New-MgDeviceManagementRemoteAssistancePartner -BodyParameter $params

```