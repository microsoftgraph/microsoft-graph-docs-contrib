---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-compliance-policies create --body '{\
  "@odata.type": "#microsoft.graph.androidCompliancePolicy",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "passwordRequired": true,\
  "passwordMinimumLength": 5,\
  "passwordRequiredType": "alphabetic",\
  "passwordMinutesOfInactivityBeforeLock": 5,\
  "passwordExpirationDays": 6,\
  "passwordPreviousPasswordBlockCount": 2,\
  "securityPreventInstallAppsFromUnknownSources": true,\
  "securityDisableUsbDebugging": true,\
  "securityRequireVerifyApps": true,\
  "deviceThreatProtectionEnabled": true,\
  "deviceThreatProtectionRequiredSecurityLevel": "secured",\
  "securityBlockJailbrokenDevices": true,\
  "osMinimumVersion": "Os Minimum Version value",\
  "osMaximumVersion": "Os Maximum Version value",\
  "minAndroidSecurityPatchLevel": "Min Android Security Patch Level value",\
  "storageRequireEncryption": true,\
  "securityRequireSafetyNetAttestationBasicIntegrity": true,\
  "securityRequireSafetyNetAttestationCertifiedDevice": true,\
  "securityRequireGooglePlayServices": true,\
  "securityRequireUpToDateSecurityProviders": true,\
  "securityRequireCompanyPortalAppIntegrity": true\
}\
'

```