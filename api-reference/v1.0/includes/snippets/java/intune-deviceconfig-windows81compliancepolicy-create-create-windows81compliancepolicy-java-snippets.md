---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows81CompliancePolicy deviceCompliancePolicy = new Windows81CompliancePolicy();
deviceCompliancePolicy.setOdataType("#microsoft.graph.windows81CompliancePolicy");
deviceCompliancePolicy.setDescription("Description value");
deviceCompliancePolicy.setDisplayName("Display Name value");
deviceCompliancePolicy.setVersion(7);
deviceCompliancePolicy.setPasswordRequired(true);
deviceCompliancePolicy.setPasswordBlockSimple(true);
deviceCompliancePolicy.setPasswordExpirationDays(6);
deviceCompliancePolicy.setPasswordMinimumLength(5);
deviceCompliancePolicy.setPasswordMinutesOfInactivityBeforeLock(5);
deviceCompliancePolicy.setPasswordMinimumCharacterSetCount(0);
deviceCompliancePolicy.setPasswordRequiredType(RequiredPasswordType.Alphanumeric);
deviceCompliancePolicy.setPasswordPreviousPasswordBlockCount(2);
deviceCompliancePolicy.setOsMinimumVersion("Os Minimum Version value");
deviceCompliancePolicy.setOsMaximumVersion("Os Maximum Version value");
deviceCompliancePolicy.setStorageRequireEncryption(true);
DeviceCompliancePolicy result = graphClient.deviceManagement().deviceCompliancePolicies().post(deviceCompliancePolicy);


```