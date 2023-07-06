---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AndroidWorkProfileGeneralDeviceConfiguration
{
	OdataType = "#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	PasswordBlockFingerprintUnlock = true,
	PasswordBlockTrustAgents = true,
	PasswordExpirationDays = 6,
	PasswordMinimumLength = 5,
	PasswordMinutesOfInactivityBeforeScreenTimeout = 14,
	PasswordPreviousPasswordBlockCount = 2,
	PasswordSignInFailureCountBeforeFactoryReset = 12,
	PasswordRequiredType = AndroidWorkProfileRequiredPasswordType.LowSecurityBiometric,
	WorkProfileDataSharingType = AndroidWorkProfileCrossProfileDataSharingType.PreventAny,
	WorkProfileBlockNotificationsWhileDeviceLocked = true,
	WorkProfileBlockAddingAccounts = true,
	WorkProfileBluetoothEnableContactSharing = true,
	WorkProfileBlockScreenCapture = true,
	WorkProfileBlockCrossProfileCallerId = true,
	WorkProfileBlockCamera = true,
	WorkProfileBlockCrossProfileContactsSearch = true,
	WorkProfileBlockCrossProfileCopyPaste = true,
	WorkProfileDefaultAppPermissionPolicy = AndroidWorkProfileDefaultAppPermissionPolicyType.Prompt,
	WorkProfilePasswordBlockFingerprintUnlock = true,
	WorkProfilePasswordBlockTrustAgents = true,
	WorkProfilePasswordExpirationDays = 1,
	WorkProfilePasswordMinimumLength = 0,
	WorkProfilePasswordMinNumericCharacters = 7,
	WorkProfilePasswordMinNonLetterCharacters = 9,
	WorkProfilePasswordMinLetterCharacters = 6,
	WorkProfilePasswordMinLowerCaseCharacters = 9,
	WorkProfilePasswordMinUpperCaseCharacters = 9,
	WorkProfilePasswordMinSymbolCharacters = 6,
	WorkProfilePasswordMinutesOfInactivityBeforeScreenTimeout = 9,
	WorkProfilePasswordPreviousPasswordBlockCount = 13,
	WorkProfilePasswordSignInFailureCountBeforeFactoryReset = 7,
	WorkProfilePasswordRequiredType = AndroidWorkProfileRequiredPasswordType.LowSecurityBiometric,
	WorkProfileRequirePassword = true,
	SecurityRequireVerifyApps = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```