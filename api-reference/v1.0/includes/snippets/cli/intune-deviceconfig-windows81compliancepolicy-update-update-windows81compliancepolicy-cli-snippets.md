---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-compliance-policies patch --device-compliance-policy-id {deviceCompliancePolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.windows81CompliancePolicy",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "passwordRequired": true,\
  "passwordBlockSimple": true,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinutesOfInactivityBeforeLock": 5,\
  "passwordMinimumCharacterSetCount": 0,\
  "passwordRequiredType": "alphanumeric",\
  "passwordPreviousPasswordBlockCount": 2,\
  "osMinimumVersion": "Os Minimum Version value",\
  "osMaximumVersion": "Os Maximum Version value",\
  "storageRequireEncryption": true\
}\
'

```