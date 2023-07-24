---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.androidCompliancePolicy"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	passwordRequired = $true
	passwordMinimumLength = 
	passwordRequiredType = "alphabetic"
	passwordMinutesOfInactivityBeforeLock = 
	passwordExpirationDays = 
	passwordPreviousPasswordBlockCount = 
	securityPreventInstallAppsFromUnknownSources = $true
	securityDisableUsbDebugging = $true
	securityRequireVerifyApps = $true
	deviceThreatProtectionEnabled = $true
	deviceThreatProtectionRequiredSecurityLevel = "secured"
	securityBlockJailbrokenDevices = $true
	osMinimumVersion = "Os Minimum Version value"
	osMaximumVersion = "Os Maximum Version value"
	minAndroidSecurityPatchLevel = "Min Android Security Patch Level value"
	storageRequireEncryption = $true
	securityRequireSafetyNetAttestationBasicIntegrity = $true
	securityRequireSafetyNetAttestationCertifiedDevice = $true
	securityRequireGooglePlayServices = $true
	securityRequireUpToDateSecurityProviders = $true
	securityRequireCompanyPortalAppIntegrity = $true
}

Update-MgDeviceManagementDeviceCompliancePolicy -DeviceCompliancePolicyId $deviceCompliancePolicyId -BodyParameter $params

```