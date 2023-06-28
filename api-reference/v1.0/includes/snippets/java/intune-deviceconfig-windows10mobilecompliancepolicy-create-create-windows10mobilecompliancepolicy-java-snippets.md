---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Windows10MobileCompliancePolicy deviceCompliancePolicy = new Windows10MobileCompliancePolicy();
deviceCompliancePolicy.description = "Description value";
deviceCompliancePolicy.displayName = "Display Name value";
deviceCompliancePolicy.version = 7;
deviceCompliancePolicy.passwordRequired = true;
deviceCompliancePolicy.passwordBlockSimple = true;
deviceCompliancePolicy.passwordMinimumLength = 5;
deviceCompliancePolicy.passwordMinimumCharacterSetCount = 0;
deviceCompliancePolicy.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceCompliancePolicy.passwordPreviousPasswordBlockCount = 2;
deviceCompliancePolicy.passwordExpirationDays = 6;
deviceCompliancePolicy.passwordMinutesOfInactivityBeforeLock = 5;
deviceCompliancePolicy.passwordRequireToUnlockFromIdle = true;
deviceCompliancePolicy.osMinimumVersion = "Os Minimum Version value";
deviceCompliancePolicy.osMaximumVersion = "Os Maximum Version value";
deviceCompliancePolicy.earlyLaunchAntiMalwareDriverEnabled = true;
deviceCompliancePolicy.bitLockerEnabled = true;
deviceCompliancePolicy.secureBootEnabled = true;
deviceCompliancePolicy.codeIntegrityEnabled = true;
deviceCompliancePolicy.storageRequireEncryption = true;

graphClient.deviceManagement().deviceCompliancePolicies()
	.buildRequest()
	.post(deviceCompliancePolicy);

```