---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.iosCompliancePolicy"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	passcodeBlockSimple = $true
	passcodeExpirationDays = 
	passcodeMinimumLength = 
	passcodeMinutesOfInactivityBeforeLock = 
	passcodePreviousPasscodeBlockCount = 
	passcodeMinimumCharacterSetCount = 
	passcodeRequiredType = "alphanumeric"
	passcodeRequired = $true
	osMinimumVersion = "Os Minimum Version value"
	osMaximumVersion = "Os Maximum Version value"
	securityBlockJailbrokenDevices = $true
	deviceThreatProtectionEnabled = $true
	deviceThreatProtectionRequiredSecurityLevel = "secured"
	managedEmailProfileRequired = $true
}

New-MgDeviceManagementDeviceCompliancePolicy -BodyParameter $params

```