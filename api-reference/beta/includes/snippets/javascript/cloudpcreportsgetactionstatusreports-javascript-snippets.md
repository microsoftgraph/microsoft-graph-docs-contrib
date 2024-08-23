---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  filter: 'ActionState eq \'failed\'',
  select: [
    'Id',
    'CloudPcDeviceDisplayName',
    'BulkActionId',
    'BulkActionDisplayName',
    'CloudPcId',
    'InitiatedByUserPrincipalName',
    'DeviceOwnerUserPrincipalName',
    'Action',
    'ActionState',
    'RequestDateTime',
    'LastUpdatedDateTime',
    'ActionParameters'
  ],
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/getActionStatusReports')
	.version('beta')
	.post(stream);

```