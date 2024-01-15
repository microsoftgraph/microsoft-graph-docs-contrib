---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidWorkProfileCompliancePolicy deviceCompliancePolicy = new AndroidWorkProfileCompliancePolicy();
deviceCompliancePolicy.description = "Description value";
deviceCompliancePolicy.displayName = "Display Name value";
deviceCompliancePolicy.version = 7;
deviceCompliancePolicy.passwordRequired = true;
deviceCompliancePolicy.passwordMinimumLength = 5;
deviceCompliancePolicy.passwordRequiredType = AndroidRequiredPasswordType.ALPHABETIC;
deviceCompliancePolicy.passwordMinutesOfInactivityBeforeLock = 5;
deviceCompliancePolicy.passwordExpirationDays = 6;
deviceCompliancePolicy.passwordPreviousPasswordBlockCount = 2;
deviceCompliancePolicy.securityPreventInstallAppsFromUnknownSources = true;
deviceCompliancePolicy.securityDisableUsbDebugging = true;
deviceCompliancePolicy.securityRequireVerifyApps = true;
deviceCompliancePolicy.deviceThreatProtectionEnabled = true;
deviceCompliancePolicy.deviceThreatProtectionRequiredSecurityLevel = DeviceThreatProtectionLevel.SECURED;
deviceCompliancePolicy.securityBlockJailbrokenDevices = true;
deviceCompliancePolicy.osMinimumVersion = "Os Minimum Version value";
deviceCompliancePolicy.osMaximumVersion = "Os Maximum Version value";
deviceCompliancePolicy.minAndroidSecurityPatchLevel = "Min Android Security Patch Level value";
deviceCompliancePolicy.storageRequireEncryption = true;
deviceCompliancePolicy.securityRequireSafetyNetAttestationBasicIntegrity = true;
deviceCompliancePolicy.securityRequireSafetyNetAttestationCertifiedDevice = true;
deviceCompliancePolicy.securityRequireGooglePlayServices = true;
deviceCompliancePolicy.securityRequireUpToDateSecurityProviders = true;
deviceCompliancePolicy.securityRequireCompanyPortalAppIntegrity = true;

graphClient.deviceManagement().deviceCompliancePolicies()
	.buildRequest()
	.post(deviceCompliancePolicy);

```