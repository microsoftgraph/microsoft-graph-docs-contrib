---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  filter: 'region eq \'westus2\'',
  orderBy: [
    'cloudPcId'
  ],
  select: [
    'cloudPcId',
    'aadDeviceId',
    'cloudPcName',
    'userPrincipalName',
    'provisioningStatus',
    'region',
    'deviceHealthStatus',
    'deviceHealthStatusDateTime',
    'recentDeviceHealthFailureCount',
    'recentConnectionFailureCount',
    'systemStatus',
    'systemStatusDateTime'
  ],
  top: 10,
  skip: 0
};

await client.api('/deviceManagement/virtualEndpoint/reports/getInaccessibleCloudPcReports')
	.version('beta')
	.post(stream);

```