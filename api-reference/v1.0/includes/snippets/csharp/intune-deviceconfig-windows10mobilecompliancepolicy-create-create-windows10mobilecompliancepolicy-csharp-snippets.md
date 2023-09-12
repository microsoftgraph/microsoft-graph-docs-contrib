---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Windows10MobileCompliancePolicy
{
	OdataType = "#microsoft.graph.windows10MobileCompliancePolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordRequired = true,
	PasswordBlockSimple = true,
	PasswordMinimumLength = 5,
	PasswordMinimumCharacterSetCount = 0,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordExpirationDays = 6,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordRequireToUnlockFromIdle = true,
	OsMinimumVersion = "Os Minimum Version value",
	OsMaximumVersion = "Os Maximum Version value",
	EarlyLaunchAntiMalwareDriverEnabled = true,
	BitLockerEnabled = true,
	SecureBootEnabled = true,
	CodeIntegrityEnabled = true,
	StorageRequireEncryption = true,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies.PostAsync(requestBody);


```