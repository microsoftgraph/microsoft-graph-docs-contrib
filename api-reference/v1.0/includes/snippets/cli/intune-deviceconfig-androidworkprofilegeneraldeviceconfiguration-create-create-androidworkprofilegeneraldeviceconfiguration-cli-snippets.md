---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-configurations create --body '{\
  "@odata.type": "#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "passwordBlockFingerprintUnlock": true,\
  "passwordBlockTrustAgents": true,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinutesOfInactivityBeforeScreenTimeout": 14,\
  "passwordPreviousPasswordBlockCount": 2,\
  "passwordSignInFailureCountBeforeFactoryReset": 12,\
  "passwordRequiredType": "lowSecurityBiometric",\
  "workProfileDataSharingType": "preventAny",\
  "workProfileBlockNotificationsWhileDeviceLocked": true,\
  "workProfileBlockAddingAccounts": true,\
  "workProfileBluetoothEnableContactSharing": true,\
  "workProfileBlockScreenCapture": true,\
  "workProfileBlockCrossProfileCallerId": true,\
  "workProfileBlockCamera": true,\
  "workProfileBlockCrossProfileContactsSearch": true,\
  "workProfileBlockCrossProfileCopyPaste": true,\
  "workProfileDefaultAppPermissionPolicy": "prompt",\
  "workProfilePasswordBlockFingerprintUnlock": true,\
  "workProfilePasswordBlockTrustAgents": true,\
  "workProfilePasswordExpirationDays": 1,\
  "workProfilePasswordMinimumLength": 0,\
  "workProfilePasswordMinNumericCharacters": 7,\
  "workProfilePasswordMinNonLetterCharacters": 9,\
  "workProfilePasswordMinLetterCharacters": 6,\
  "workProfilePasswordMinLowerCaseCharacters": 9,\
  "workProfilePasswordMinUpperCaseCharacters": 9,\
  "workProfilePasswordMinSymbolCharacters": 6,\
  "workProfilePasswordMinutesOfInactivityBeforeScreenTimeout": 9,\
  "workProfilePasswordPreviousPasswordBlockCount": 13,\
  "workProfilePasswordSignInFailureCountBeforeFactoryReset": 7,\
  "workProfilePasswordRequiredType": "lowSecurityBiometric",\
  "workProfileRequirePassword": true,\
  "securityRequireVerifyApps": true\
}\
'

```