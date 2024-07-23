---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  filter: 'DisasterRecoveryStatus eq \'Active outage\'',
  select: [
    'Id',
    'CloudPcId',
    'UserId',
    'UserSettingId',
    'DeviceId',
    'CloudPCDeviceDisplayName',
    'UserPrincipalName',
    'IsCrossRegionEnabled',
    'CrossRegionHealthStatus',
    'LicenseType',
    'DisasterRecoveryStatus',
    'CurrentRestorePointDateTime',
    'ActivationExpirationDateTime'
  ],
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/retrievecrossregiondisasterrecoveryreport')
	.version('beta')
	.post(stream);

```