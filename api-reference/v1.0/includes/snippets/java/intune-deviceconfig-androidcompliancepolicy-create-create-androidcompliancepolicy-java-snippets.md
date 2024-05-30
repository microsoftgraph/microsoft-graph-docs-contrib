---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AndroidCompliancePolicy deviceCompliancePolicy = new AndroidCompliancePolicy();
deviceCompliancePolicy.setOdataType("#microsoft.graph.androidCompliancePolicy");
deviceCompliancePolicy.setDescription("Description value");
deviceCompliancePolicy.setDisplayName("Display Name value");
deviceCompliancePolicy.setVersion(7);
deviceCompliancePolicy.setPasswordRequired(true);
deviceCompliancePolicy.setPasswordMinimumLength(5);
deviceCompliancePolicy.setPasswordRequiredType(AndroidRequiredPasswordType.Alphabetic);
deviceCompliancePolicy.setPasswordMinutesOfInactivityBeforeLock(5);
deviceCompliancePolicy.setPasswordExpirationDays(6);
deviceCompliancePolicy.setPasswordPreviousPasswordBlockCount(2);
deviceCompliancePolicy.setSecurityPreventInstallAppsFromUnknownSources(true);
deviceCompliancePolicy.setSecurityDisableUsbDebugging(true);
deviceCompliancePolicy.setSecurityRequireVerifyApps(true);
deviceCompliancePolicy.setDeviceThreatProtectionEnabled(true);
deviceCompliancePolicy.setDeviceThreatProtectionRequiredSecurityLevel(DeviceThreatProtectionLevel.Secured);
deviceCompliancePolicy.setSecurityBlockJailbrokenDevices(true);
deviceCompliancePolicy.setOsMinimumVersion("Os Minimum Version value");
deviceCompliancePolicy.setOsMaximumVersion("Os Maximum Version value");
deviceCompliancePolicy.setMinAndroidSecurityPatchLevel("Min Android Security Patch Level value");
deviceCompliancePolicy.setStorageRequireEncryption(true);
deviceCompliancePolicy.setSecurityRequireSafetyNetAttestationBasicIntegrity(true);
deviceCompliancePolicy.setSecurityRequireSafetyNetAttestationCertifiedDevice(true);
deviceCompliancePolicy.setSecurityRequireGooglePlayServices(true);
deviceCompliancePolicy.setSecurityRequireUpToDateSecurityProviders(true);
deviceCompliancePolicy.setSecurityRequireCompanyPortalAppIntegrity(true);
DeviceCompliancePolicy result = graphClient.deviceManagement().deviceCompliancePolicies().post(deviceCompliancePolicy);


```