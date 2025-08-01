---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveRestoreArtifactsBulkAdditionRequest = {
  displayName: 'ODB-BulkRestoreArtifacts',
  drives: [
    'contoso1@micorosft.com',
    'consotos2@microsoft.com',
    'contoso3@microsoft.com'
  ],
  directoryObjectIds: [],
  protectionUnitIds: [],
  protectionTimePeriod: {
    startDateTime: '2021-01-01T00:00:00Z',
    endDateTime: '2021-01-08T00:00:00Z'
  },
  destinationType: 'new',
  tags: 'fastRestore',
  restorePointPreference: 'latest'
};

await client.api('/solutions/backupRestore/oneDriveForBusinessRestoreSessions/493635f0-b8c0-4c7f-bcb7-b20c85d97efe/driveRestoreArtifactsBulkAdditionRequests')
	.version('beta')
	.post(driveRestoreArtifactsBulkAdditionRequest);

```