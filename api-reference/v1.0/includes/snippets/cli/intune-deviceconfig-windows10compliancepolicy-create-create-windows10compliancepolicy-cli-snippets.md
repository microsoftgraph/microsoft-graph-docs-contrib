---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-compliance-policies create --body '{\
  "@odata.type": "#microsoft.graph.windows10CompliancePolicy",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "passwordRequired": true,\
  "passwordBlockSimple": true,\
  "passwordRequiredToUnlockFromIdle": true,\
  "passwordMinutesOfInactivityBeforeLock": 5,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinimumCharacterSetCount": 0,\
  "passwordRequiredType": "alphanumeric",\
  "passwordPreviousPasswordBlockCount": 2,\
  "requireHealthyDeviceReport": true,\
  "osMinimumVersion": "Os Minimum Version value",\
  "osMaximumVersion": "Os Maximum Version value",\
  "mobileOsMinimumVersion": "Mobile Os Minimum Version value",\
  "mobileOsMaximumVersion": "Mobile Os Maximum Version value",\
  "earlyLaunchAntiMalwareDriverEnabled": true,\
  "bitLockerEnabled": true,\
  "secureBootEnabled": true,\
  "codeIntegrityEnabled": true,\
  "storageRequireEncryption": true\
}\
'

```