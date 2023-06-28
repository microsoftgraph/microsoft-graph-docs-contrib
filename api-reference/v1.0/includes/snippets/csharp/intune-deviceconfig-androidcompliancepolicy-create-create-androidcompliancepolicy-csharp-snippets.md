---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AndroidCompliancePolicy
{
	OdataType = "#microsoft.graph.androidCompliancePolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordRequired = true,
	PasswordMinimumLength = 5,
	PasswordRequiredType = AndroidRequiredPasswordType.Alphabetic,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordExpirationDays = 6,
	PasswordPreviousPasswordBlockCount = 2,
	SecurityPreventInstallAppsFromUnknownSources = true,
	SecurityDisableUsbDebugging = true,
	SecurityRequireVerifyApps = true,
	DeviceThreatProtectionEnabled = true,
	DeviceThreatProtectionRequiredSecurityLevel = DeviceThreatProtectionLevel.Secured,
	SecurityBlockJailbrokenDevices = true,
	OsMinimumVersion = "Os Minimum Version value",
	OsMaximumVersion = "Os Maximum Version value",
	MinAndroidSecurityPatchLevel = "Min Android Security Patch Level value",
	StorageRequireEncryption = true,
	SecurityRequireSafetyNetAttestationBasicIntegrity = true,
	SecurityRequireSafetyNetAttestationCertifiedDevice = true,
	SecurityRequireGooglePlayServices = true,
	SecurityRequireUpToDateSecurityProviders = true,
	SecurityRequireCompanyPortalAppIntegrity = true,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies.PostAsync(requestBody);


```