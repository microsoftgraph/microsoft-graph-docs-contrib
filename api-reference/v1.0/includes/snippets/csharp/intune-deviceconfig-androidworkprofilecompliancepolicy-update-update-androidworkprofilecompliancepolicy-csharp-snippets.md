---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AndroidWorkProfileCompliancePolicy
{
	OdataType = "#microsoft.graph.androidWorkProfileCompliancePolicy",
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].PatchAsync(requestBody);


```