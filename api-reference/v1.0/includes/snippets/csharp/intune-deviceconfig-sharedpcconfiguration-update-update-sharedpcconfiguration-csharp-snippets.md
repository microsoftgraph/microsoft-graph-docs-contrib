---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SharedPCConfiguration
{
	OdataType = "#microsoft.graph.sharedPCConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AccountManagerPolicy = new SharedPCAccountManagerPolicy
	{
		OdataType = "microsoft.graph.sharedPCAccountManagerPolicy",
		AccountDeletionPolicy = SharedPCAccountDeletionPolicyType.DiskSpaceThreshold,
		CacheAccountsAboveDiskFreePercentage = 4,
		InactiveThresholdDays = 5,
		RemoveAccountsBelowDiskFreePercentage = 5,
	},
	AllowedAccounts = SharedPCAllowedAccountType.Domain,
	AllowLocalStorage = true,
	DisableAccountManager = true,
	DisableEduPolicies = true,
	DisablePowerPolicies = true,
	DisableSignInOnResume = true,
	Enabled = true,
	IdleTimeBeforeSleepInSeconds = 12,
	KioskAppDisplayName = "Kiosk App Display Name value",
	KioskAppUserModelId = "Kiosk App User Model Id value",
	MaintenanceStartTime = new Time(DateTime.Parse("11:59:24.7240000")),
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```