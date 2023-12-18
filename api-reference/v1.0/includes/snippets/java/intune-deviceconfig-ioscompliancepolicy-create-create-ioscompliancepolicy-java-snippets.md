---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosCompliancePolicy deviceCompliancePolicy = new IosCompliancePolicy();
deviceCompliancePolicy.description = "Description value";
deviceCompliancePolicy.displayName = "Display Name value";
deviceCompliancePolicy.version = 7;
deviceCompliancePolicy.passcodeBlockSimple = true;
deviceCompliancePolicy.passcodeExpirationDays = 6;
deviceCompliancePolicy.passcodeMinimumLength = 5;
deviceCompliancePolicy.passcodeMinutesOfInactivityBeforeLock = 5;
deviceCompliancePolicy.passcodePreviousPasscodeBlockCount = 2;
deviceCompliancePolicy.passcodeMinimumCharacterSetCount = 0;
deviceCompliancePolicy.passcodeRequiredType = RequiredPasswordType.ALPHANUMERIC;
deviceCompliancePolicy.passcodeRequired = true;
deviceCompliancePolicy.osMinimumVersion = "Os Minimum Version value";
deviceCompliancePolicy.osMaximumVersion = "Os Maximum Version value";
deviceCompliancePolicy.securityBlockJailbrokenDevices = true;
deviceCompliancePolicy.deviceThreatProtectionEnabled = true;
deviceCompliancePolicy.deviceThreatProtectionRequiredSecurityLevel = DeviceThreatProtectionLevel.SECURED;
deviceCompliancePolicy.managedEmailProfileRequired = true;

graphClient.deviceManagement().deviceCompliancePolicies()
	.buildRequest()
	.post(deviceCompliancePolicy);

```