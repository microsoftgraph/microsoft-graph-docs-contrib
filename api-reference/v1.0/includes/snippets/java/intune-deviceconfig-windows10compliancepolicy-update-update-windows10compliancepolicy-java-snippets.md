---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Windows10CompliancePolicy deviceCompliancePolicy = new Windows10CompliancePolicy();
deviceCompliancePolicy.description = "Description value";
deviceCompliancePolicy.displayName = "Display Name value";
deviceCompliancePolicy.version = 7;
deviceCompliancePolicy.passwordRequired = true;
deviceCompliancePolicy.passwordBlockSimple = true;
deviceCompliancePolicy.passwordRequiredToUnlockFromIdle = true;
deviceCompliancePolicy.passwordMinutesOfInactivityBeforeLock = 5;
deviceCompliancePolicy.passwordExpirationDays = 6;
deviceCompliancePolicy.passwordMinimumLength = 5;
deviceCompliancePolicy.passwordMinimumCharacterSetCount = 0;
deviceCompliancePolicy.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceCompliancePolicy.passwordPreviousPasswordBlockCount = 2;
deviceCompliancePolicy.requireHealthyDeviceReport = true;
deviceCompliancePolicy.osMinimumVersion = "Os Minimum Version value";
deviceCompliancePolicy.osMaximumVersion = "Os Maximum Version value";
deviceCompliancePolicy.mobileOsMinimumVersion = "Mobile Os Minimum Version value";
deviceCompliancePolicy.mobileOsMaximumVersion = "Mobile Os Maximum Version value";
deviceCompliancePolicy.earlyLaunchAntiMalwareDriverEnabled = true;
deviceCompliancePolicy.bitLockerEnabled = true;
deviceCompliancePolicy.secureBootEnabled = true;
deviceCompliancePolicy.codeIntegrityEnabled = true;
deviceCompliancePolicy.storageRequireEncryption = true;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}")
	.buildRequest()
	.patch(deviceCompliancePolicy);

```