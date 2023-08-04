---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-compliance-policies patch --device-compliance-policy-id {deviceCompliancePolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.macOSCompliancePolicy",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "passwordRequired": true,\
  "passwordBlockSimple": true,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinutesOfInactivityBeforeLock": 5,\
  "passwordPreviousPasswordBlockCount": 2,\
  "passwordMinimumCharacterSetCount": 0,\
  "passwordRequiredType": "alphanumeric",\
  "osMinimumVersion": "Os Minimum Version value",\
  "osMaximumVersion": "Os Maximum Version value",\
  "systemIntegrityProtectionEnabled": true,\
  "deviceThreatProtectionEnabled": true,\
  "deviceThreatProtectionRequiredSecurityLevel": "secured",\
  "storageRequireEncryption": true,\
  "firewallEnabled": true,\
  "firewallBlockAllIncoming": true,\
  "firewallEnableStealthMode": true\
}\
'

```