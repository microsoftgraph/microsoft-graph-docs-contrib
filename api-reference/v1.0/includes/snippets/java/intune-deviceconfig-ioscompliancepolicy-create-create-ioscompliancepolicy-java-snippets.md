---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosCompliancePolicy deviceCompliancePolicy = new IosCompliancePolicy();
deviceCompliancePolicy.setOdataType("#microsoft.graph.iosCompliancePolicy");
deviceCompliancePolicy.setDescription("Description value");
deviceCompliancePolicy.setDisplayName("Display Name value");
deviceCompliancePolicy.setVersion(7);
deviceCompliancePolicy.setPasscodeBlockSimple(true);
deviceCompliancePolicy.setPasscodeExpirationDays(6);
deviceCompliancePolicy.setPasscodeMinimumLength(5);
deviceCompliancePolicy.setPasscodeMinutesOfInactivityBeforeLock(5);
deviceCompliancePolicy.setPasscodePreviousPasscodeBlockCount(2);
deviceCompliancePolicy.setPasscodeMinimumCharacterSetCount(0);
deviceCompliancePolicy.setPasscodeRequiredType(RequiredPasswordType.Alphanumeric);
deviceCompliancePolicy.setPasscodeRequired(true);
deviceCompliancePolicy.setOsMinimumVersion("Os Minimum Version value");
deviceCompliancePolicy.setOsMaximumVersion("Os Maximum Version value");
deviceCompliancePolicy.setSecurityBlockJailbrokenDevices(true);
deviceCompliancePolicy.setDeviceThreatProtectionEnabled(true);
deviceCompliancePolicy.setDeviceThreatProtectionRequiredSecurityLevel(DeviceThreatProtectionLevel.Secured);
deviceCompliancePolicy.setManagedEmailProfileRequired(true);
DeviceCompliancePolicy result = graphClient.deviceManagement().deviceCompliancePolicies().post(deviceCompliancePolicy);


```