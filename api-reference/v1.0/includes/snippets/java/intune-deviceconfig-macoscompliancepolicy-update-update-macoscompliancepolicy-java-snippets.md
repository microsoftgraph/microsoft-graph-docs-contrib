---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MacOSCompliancePolicy deviceCompliancePolicy = new MacOSCompliancePolicy();
deviceCompliancePolicy.description = "Description value";
deviceCompliancePolicy.displayName = "Display Name value";
deviceCompliancePolicy.version = 7;
deviceCompliancePolicy.passwordRequired = true;
deviceCompliancePolicy.passwordBlockSimple = true;
deviceCompliancePolicy.passwordExpirationDays = 6;
deviceCompliancePolicy.passwordMinimumLength = 5;
deviceCompliancePolicy.passwordMinutesOfInactivityBeforeLock = 5;
deviceCompliancePolicy.passwordPreviousPasswordBlockCount = 2;
deviceCompliancePolicy.passwordMinimumCharacterSetCount = 0;
deviceCompliancePolicy.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceCompliancePolicy.osMinimumVersion = "Os Minimum Version value";
deviceCompliancePolicy.osMaximumVersion = "Os Maximum Version value";
deviceCompliancePolicy.systemIntegrityProtectionEnabled = true;
deviceCompliancePolicy.deviceThreatProtectionEnabled = true;
deviceCompliancePolicy.deviceThreatProtectionRequiredSecurityLevel = DeviceThreatProtectionLevel.SECURED;
deviceCompliancePolicy.storageRequireEncryption = true;
deviceCompliancePolicy.firewallEnabled = true;
deviceCompliancePolicy.firewallBlockAllIncoming = true;
deviceCompliancePolicy.firewallEnableStealthMode = true;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}")
	.buildRequest()
	.patch(deviceCompliancePolicy);

```