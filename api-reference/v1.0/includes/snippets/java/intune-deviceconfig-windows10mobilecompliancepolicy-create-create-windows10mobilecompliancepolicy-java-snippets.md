---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows10MobileCompliancePolicy deviceCompliancePolicy = new Windows10MobileCompliancePolicy();
deviceCompliancePolicy.setOdataType("#microsoft.graph.windows10MobileCompliancePolicy");
deviceCompliancePolicy.setDescription("Description value");
deviceCompliancePolicy.setDisplayName("Display Name value");
deviceCompliancePolicy.setVersion(7);
deviceCompliancePolicy.setPasswordRequired(true);
deviceCompliancePolicy.setPasswordBlockSimple(true);
deviceCompliancePolicy.setPasswordMinimumLength(5);
deviceCompliancePolicy.setPasswordMinimumCharacterSetCount(0);
deviceCompliancePolicy.setPasswordRequiredType(RequiredPasswordType.Alphanumeric);
deviceCompliancePolicy.setPasswordPreviousPasswordBlockCount(2);
deviceCompliancePolicy.setPasswordExpirationDays(6);
deviceCompliancePolicy.setPasswordMinutesOfInactivityBeforeLock(5);
deviceCompliancePolicy.setPasswordRequireToUnlockFromIdle(true);
deviceCompliancePolicy.setOsMinimumVersion("Os Minimum Version value");
deviceCompliancePolicy.setOsMaximumVersion("Os Maximum Version value");
deviceCompliancePolicy.setEarlyLaunchAntiMalwareDriverEnabled(true);
deviceCompliancePolicy.setBitLockerEnabled(true);
deviceCompliancePolicy.setSecureBootEnabled(true);
deviceCompliancePolicy.setCodeIntegrityEnabled(true);
deviceCompliancePolicy.setStorageRequireEncryption(true);
DeviceCompliancePolicy result = graphClient.deviceManagement().deviceCompliancePolicies().post(deviceCompliancePolicy);


```