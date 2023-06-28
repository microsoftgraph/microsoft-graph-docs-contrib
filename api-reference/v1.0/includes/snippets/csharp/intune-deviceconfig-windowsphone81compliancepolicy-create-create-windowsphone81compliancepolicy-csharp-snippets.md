---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsPhone81CompliancePolicy
{
	OdataType = "#microsoft.graph.windowsPhone81CompliancePolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordBlockSimple = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordMinimumCharacterSetCount = 0,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordRequired = true,
	OsMinimumVersion = "Os Minimum Version value",
	OsMaximumVersion = "Os Maximum Version value",
	StorageRequireEncryption = true,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies.PostAsync(requestBody);


```