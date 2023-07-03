---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsPhone81CompliancePolicy deviceCompliancePolicy = new WindowsPhone81CompliancePolicy();
deviceCompliancePolicy.description = "Description value";
deviceCompliancePolicy.displayName = "Display Name value";
deviceCompliancePolicy.version = 7;
deviceCompliancePolicy.passwordBlockSimple = true;
deviceCompliancePolicy.passwordExpirationDays = 6;
deviceCompliancePolicy.passwordMinimumLength = 5;
deviceCompliancePolicy.passwordMinutesOfInactivityBeforeLock = 5;
deviceCompliancePolicy.passwordMinimumCharacterSetCount = 0;
deviceCompliancePolicy.passwordRequiredType = AndroidRequiredPasswordType.ALPHANUMERIC;
deviceCompliancePolicy.passwordPreviousPasswordBlockCount = 2;
deviceCompliancePolicy.passwordRequired = true;
deviceCompliancePolicy.osMinimumVersion = "Os Minimum Version value";
deviceCompliancePolicy.osMaximumVersion = "Os Maximum Version value";
deviceCompliancePolicy.storageRequireEncryption = true;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}")
	.buildRequest()
	.patch(deviceCompliancePolicy);

```