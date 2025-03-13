---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceCompliancePolicy = {
  '@odata.type': '#microsoft.graph.androidWorkProfileCompliancePolicy',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  passwordRequired: true,
  passwordMinimumLength: 5,
  passwordRequiredType: 'alphabetic',
  passwordMinutesOfInactivityBeforeLock: 5,
  passwordExpirationDays: 6,
  passwordPreviousPasswordBlockCount: 2,
  securityPreventInstallAppsFromUnknownSources: true,
  securityDisableUsbDebugging: true,
  securityRequireVerifyApps: true,
  deviceThreatProtectionEnabled: true,
  deviceThreatProtectionRequiredSecurityLevel: 'secured',
  securityBlockJailbrokenDevices: true,
  osMinimumVersion: 'Os Minimum Version value',
  osMaximumVersion: 'Os Maximum Version value',
  minAndroidSecurityPatchLevel: 'Min Android Security Patch Level value',
  storageRequireEncryption: true,
  securityRequireSafetyNetAttestationBasicIntegrity: true,
  securityRequireSafetyNetAttestationCertifiedDevice: true,
  securityRequireGooglePlayServices: true,
  securityRequireUpToDateSecurityProviders: true,
  securityRequireCompanyPortalAppIntegrity: true
};

await client.api('/deviceManagement/deviceCompliancePolicies')
	.post(deviceCompliancePolicy);

```