---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-configurations create --body '{\
  "@odata.type": "#microsoft.graph.windows81GeneralConfiguration",\
  "description": "Description value",\
  "displayName": "Display Name value",\
  "version": 7,\
  "accountsBlockAddingNonMicrosoftAccountEmail": true,\
  "applyOnlyToWindows81": true,\
  "browserBlockAutofill": true,\
  "browserBlockAutomaticDetectionOfIntranetSites": true,\
  "browserBlockEnterpriseModeAccess": true,\
  "browserBlockJavaScript": true,\
  "browserBlockPlugins": true,\
  "browserBlockPopups": true,\
  "browserBlockSendingDoNotTrackHeader": true,\
  "browserBlockSingleWordEntryOnIntranetSites": true,\
  "browserRequireSmartScreen": true,\
  "browserEnterpriseModeSiteListLocation": "Browser Enterprise Mode Site List Location value",\
  "browserInternetSecurityLevel": "medium",\
  "browserIntranetSecurityLevel": "low",\
  "browserLoggingReportLocation": "Browser Logging Report Location value",\
  "browserRequireHighSecurityForRestrictedSites": true,\
  "browserRequireFirewall": true,\
  "browserRequireFraudWarning": true,\
  "browserTrustedSitesSecurityLevel": "low",\
  "cellularBlockDataRoaming": true,\
  "diagnosticsBlockDataSubmission": true,\
  "passwordBlockPicturePasswordAndPin": true,\
  "passwordExpirationDays": 6,\
  "passwordMinimumLength": 5,\
  "passwordMinutesOfInactivityBeforeScreenTimeout": 14,\
  "passwordMinimumCharacterSetCount": 0,\
  "passwordPreviousPasswordBlockCount": 2,\
  "passwordRequiredType": "alphanumeric",\
  "passwordSignInFailureCountBeforeFactoryReset": 12,\
  "storageRequireDeviceEncryption": true,\
  "updatesRequireAutomaticUpdates": true,\
  "userAccountControlSettings": "alwaysNotify",\
  "workFoldersUrl": "https://example.com/workFoldersUrl/"\
}\
'

```