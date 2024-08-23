---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MacOSCompliancePolicy deviceCompliancePolicy = new MacOSCompliancePolicy();
deviceCompliancePolicy.setOdataType("#microsoft.graph.macOSCompliancePolicy");
deviceCompliancePolicy.setDescription("Description value");
deviceCompliancePolicy.setDisplayName("Display Name value");
deviceCompliancePolicy.setVersion(7);
deviceCompliancePolicy.setPasswordRequired(true);
deviceCompliancePolicy.setPasswordBlockSimple(true);
deviceCompliancePolicy.setPasswordExpirationDays(6);
deviceCompliancePolicy.setPasswordMinimumLength(5);
deviceCompliancePolicy.setPasswordMinutesOfInactivityBeforeLock(5);
deviceCompliancePolicy.setPasswordPreviousPasswordBlockCount(2);
deviceCompliancePolicy.setPasswordMinimumCharacterSetCount(0);
deviceCompliancePolicy.setPasswordRequiredType(RequiredPasswordType.Alphanumeric);
deviceCompliancePolicy.setOsMinimumVersion("Os Minimum Version value");
deviceCompliancePolicy.setOsMaximumVersion("Os Maximum Version value");
deviceCompliancePolicy.setSystemIntegrityProtectionEnabled(true);
deviceCompliancePolicy.setDeviceThreatProtectionEnabled(true);
deviceCompliancePolicy.setDeviceThreatProtectionRequiredSecurityLevel(DeviceThreatProtectionLevel.Secured);
deviceCompliancePolicy.setStorageRequireEncryption(true);
deviceCompliancePolicy.setFirewallEnabled(true);
deviceCompliancePolicy.setFirewallBlockAllIncoming(true);
deviceCompliancePolicy.setFirewallEnableStealthMode(true);
DeviceCompliancePolicy result = graphClient.deviceManagement().deviceCompliancePolicies().post(deviceCompliancePolicy);


```