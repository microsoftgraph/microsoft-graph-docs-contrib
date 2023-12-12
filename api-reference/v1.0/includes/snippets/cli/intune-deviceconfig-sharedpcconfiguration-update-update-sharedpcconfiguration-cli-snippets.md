---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-configurations patch --device-configuration-id {deviceConfiguration-id} --body '{\
  "@odata.type": "#microsoft.graph.sharedPCConfiguration",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "accountManagerPolicy": {\
    "@odata.type": "microsoft.graph.sharedPCAccountManagerPolicy",\
    "accountDeletionPolicy": "diskSpaceThreshold",\
    "cacheAccountsAboveDiskFreePercentage": 4,\
    "inactiveThresholdDays": 5,\
    "removeAccountsBelowDiskFreePercentage": 5\
  },\
  "allowedAccounts": "domain",\
  "allowLocalStorage": true,\
  "disableAccountManager": true,\
  "disableEduPolicies": true,\
  "disablePowerPolicies": true,\
  "disableSignInOnResume": true,\
  "enabled": true,\
  "idleTimeBeforeSleepInSeconds": 12,\
  "kioskAppDisplayName": "Kiosk App Display Name value",\
  "kioskAppUserModelId": "Kiosk App User Model Id value",\
  "maintenanceStartTime": "11:59:24.7240000"\
}\
'

```