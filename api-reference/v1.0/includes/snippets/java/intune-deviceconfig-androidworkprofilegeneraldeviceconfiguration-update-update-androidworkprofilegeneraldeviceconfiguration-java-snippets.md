---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidWorkProfileGeneralDeviceConfiguration deviceConfiguration = new AndroidWorkProfileGeneralDeviceConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.passwordBlockFingerprintUnlock = true;
deviceConfiguration.passwordBlockTrustAgents = true;
deviceConfiguration.passwordExpirationDays = 6;
deviceConfiguration.passwordMinimumLength = 5;
deviceConfiguration.passwordMinutesOfInactivityBeforeScreenTimeout = 14;
deviceConfiguration.passwordPreviousPasswordBlockCount = 2;
deviceConfiguration.passwordSignInFailureCountBeforeFactoryReset = 12;
deviceConfiguration.passwordRequiredType = AndroidRequiredPasswordType.LOW_SECURITY_BIOMETRIC;
deviceConfiguration.workProfileDataSharingType = AndroidWorkProfileCrossProfileDataSharingType.PREVENT_ANY;
deviceConfiguration.workProfileBlockNotificationsWhileDeviceLocked = true;
deviceConfiguration.workProfileBlockAddingAccounts = true;
deviceConfiguration.workProfileBluetoothEnableContactSharing = true;
deviceConfiguration.workProfileBlockScreenCapture = true;
deviceConfiguration.workProfileBlockCrossProfileCallerId = true;
deviceConfiguration.workProfileBlockCamera = true;
deviceConfiguration.workProfileBlockCrossProfileContactsSearch = true;
deviceConfiguration.workProfileBlockCrossProfileCopyPaste = true;
deviceConfiguration.workProfileDefaultAppPermissionPolicy = AndroidWorkProfileDefaultAppPermissionPolicyType.PROMPT;
deviceConfiguration.workProfilePasswordBlockFingerprintUnlock = true;
deviceConfiguration.workProfilePasswordBlockTrustAgents = true;
deviceConfiguration.workProfilePasswordExpirationDays = 1;
deviceConfiguration.workProfilePasswordMinimumLength = 0;
deviceConfiguration.workProfilePasswordMinNumericCharacters = 7;
deviceConfiguration.workProfilePasswordMinNonLetterCharacters = 9;
deviceConfiguration.workProfilePasswordMinLetterCharacters = 6;
deviceConfiguration.workProfilePasswordMinLowerCaseCharacters = 9;
deviceConfiguration.workProfilePasswordMinUpperCaseCharacters = 9;
deviceConfiguration.workProfilePasswordMinSymbolCharacters = 6;
deviceConfiguration.workProfilePasswordMinutesOfInactivityBeforeScreenTimeout = 9;
deviceConfiguration.workProfilePasswordPreviousPasswordBlockCount = 13;
deviceConfiguration.workProfilePasswordSignInFailureCountBeforeFactoryReset = 7;
deviceConfiguration.workProfilePasswordRequiredType = AndroidWorkProfileRequiredPasswordType.LOW_SECURITY_BIOMETRIC;
deviceConfiguration.workProfileRequirePassword = true;
deviceConfiguration.securityRequireVerifyApps = true;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}")
	.buildRequest()
	.patch(deviceConfiguration);

```