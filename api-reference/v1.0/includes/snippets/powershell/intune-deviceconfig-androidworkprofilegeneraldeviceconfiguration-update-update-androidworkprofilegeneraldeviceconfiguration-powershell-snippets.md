---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	passwordBlockFingerprintUnlock = $true
	passwordBlockTrustAgents = $true
	passwordExpirationDays = 
	passwordMinimumLength = 
	passwordMinutesOfInactivityBeforeScreenTimeout = 
	passwordPreviousPasswordBlockCount = 
	passwordSignInFailureCountBeforeFactoryReset = 
	passwordRequiredType = "lowSecurityBiometric"
	workProfileDataSharingType = "preventAny"
	workProfileBlockNotificationsWhileDeviceLocked = $true
	workProfileBlockAddingAccounts = $true
	workProfileBluetoothEnableContactSharing = $true
	workProfileBlockScreenCapture = $true
	workProfileBlockCrossProfileCallerId = $true
	workProfileBlockCamera = $true
	workProfileBlockCrossProfileContactsSearch = $true
	workProfileBlockCrossProfileCopyPaste = $true
	workProfileDefaultAppPermissionPolicy = "prompt"
	workProfilePasswordBlockFingerprintUnlock = $true
	workProfilePasswordBlockTrustAgents = $true
	workProfilePasswordExpirationDays = 
	workProfilePasswordMinimumLength = 
	workProfilePasswordMinNumericCharacters = 
	workProfilePasswordMinNonLetterCharacters = 
	workProfilePasswordMinLetterCharacters = 
	workProfilePasswordMinLowerCaseCharacters = 
	workProfilePasswordMinUpperCaseCharacters = 
	workProfilePasswordMinSymbolCharacters = 
	workProfilePasswordMinutesOfInactivityBeforeScreenTimeout = 
	workProfilePasswordPreviousPasswordBlockCount = 
	workProfilePasswordSignInFailureCountBeforeFactoryReset = 
	workProfilePasswordRequiredType = "lowSecurityBiometric"
	workProfileRequirePassword = $true
	securityRequireVerifyApps = $true
}

Update-MgDeviceManagementDeviceConfiguration -DeviceConfigurationId $deviceConfigurationId -BodyParameter $params

```