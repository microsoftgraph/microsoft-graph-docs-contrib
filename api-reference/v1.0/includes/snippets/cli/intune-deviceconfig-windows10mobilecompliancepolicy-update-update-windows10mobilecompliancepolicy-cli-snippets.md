---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-compliance-policies patch --device-compliance-policy-id {deviceCompliancePolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.windows10MobileCompliancePolicy",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "passwordRequired": true,\
  "passwordBlockSimple": true,\
  "passwordMinimumLength": 5,\
  "passwordMinimumCharacterSetCount": 0,\
  "passwordRequiredType": "alphanumeric",\
  "passwordPreviousPasswordBlockCount": 2,\
  "passwordExpirationDays": 6,\
  "passwordMinutesOfInactivityBeforeLock": 5,\
  "passwordRequireToUnlockFromIdle": true,\
  "osMinimumVersion": "Os Minimum Version value",\
  "osMaximumVersion": "Os Maximum Version value",\
  "earlyLaunchAntiMalwareDriverEnabled": true,\
  "bitLockerEnabled": true,\
  "secureBootEnabled": true,\
  "codeIntegrityEnabled": true,\
  "storageRequireEncryption": true\
}\
'

```