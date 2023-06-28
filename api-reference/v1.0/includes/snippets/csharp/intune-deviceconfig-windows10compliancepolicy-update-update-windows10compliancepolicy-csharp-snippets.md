---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Windows10CompliancePolicy
{
	OdataType = "#microsoft.graph.windows10CompliancePolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordRequired = true,
	PasswordBlockSimple = true,
	PasswordRequiredToUnlockFromIdle = true,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinimumCharacterSetCount = 0,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordPreviousPasswordBlockCount = 2,
	RequireHealthyDeviceReport = true,
	OsMinimumVersion = "Os Minimum Version value",
	OsMaximumVersion = "Os Maximum Version value",
	MobileOsMinimumVersion = "Mobile Os Minimum Version value",
	MobileOsMaximumVersion = "Mobile Os Maximum Version value",
	EarlyLaunchAntiMalwareDriverEnabled = true,
	BitLockerEnabled = true,
	SecureBootEnabled = true,
	CodeIntegrityEnabled = true,
	StorageRequireEncryption = true,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].PatchAsync(requestBody);


```