---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportName: 'crossRegionDisasterRecoveryReport',
  filter: 'DisasterRecoveryStatus eq \'Active outage\'',
  select: [
    'Id',
    'CloudPcId',
    'UserId',
    'UserSettingId',
    'DeviceId',
    'CloudPCDeviceDisplayName',
    'UserPrincipalName',
    'EnabledDRType',
    'DRHealthStatus',
    'LicenseType',
    'DisasterRecoveryStatus',
    'CurrentRestorePointDateTime',
    'BackupCloudPcStatus',
    'ActivationExpirationDateTime'
  ],
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/retrievecrossregiondisasterrecoveryreport')
	.version('beta')
	.post(stream);

```