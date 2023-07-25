---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Windows81CompliancePolicy
{
	OdataType = "#microsoft.graph.windows81CompliancePolicy",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordRequired = true,
	PasswordBlockSimple = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeLock = 5,
	PasswordMinimumCharacterSetCount = 0,
	PasswordRequiredType = RequiredPasswordType.Alphanumeric,
	PasswordPreviousPasswordBlockCount = 2,
	OsMinimumVersion = "Os Minimum Version value",
	OsMaximumVersion = "Os Maximum Version value",
	StorageRequireEncryption = true,
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].PatchAsync(requestBody);


```