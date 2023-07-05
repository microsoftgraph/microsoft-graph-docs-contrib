---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MacOSCompliancePolicy
{
	OdataType = "#microsoft.graph.macOSCompliancePolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordRequired = true,
	PasswordBlockSimple = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordMinimumCharacterSetCount = 0,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	OsMinimumVersion = "Os Minimum Version value",
	OsMaximumVersion = "Os Maximum Version value",
	SystemIntegrityProtectionEnabled = true,
	DeviceThreatProtectionEnabled = true,
	DeviceThreatProtectionRequiredSecurityLevel = DeviceThreatProtectionLevel.Secured,
	StorageRequireEncryption = true,
	FirewallEnabled = true,
	FirewallBlockAllIncoming = true,
	FirewallEnableStealthMode = true,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies.PostAsync(requestBody);


```