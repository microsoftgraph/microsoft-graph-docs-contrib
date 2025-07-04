---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const siteRestoreArtifactsBulkAdditionRequest = {
  displayName: 'SPO-BulkRestoreArtifacts',
  siteWebUrls: [
    'https: //contoso1.sharepoint.com',
    'https: //contoso2.sharepoint.com',
    'https: //contoso3.sharepoint.com'
  ],
  protectionTimePeriod: {
    startDateTime: '2024-01-01T00:00:00Z',
    endDateTime: '2024-01-08T00:00:00Z'
  },
  destinationType: 'new',
  tags: 'fastRestore',
  restorePointPreference: 'latest'
};

await client.api('/solutions/backupRestore/sharePointRestoreSessions/959ba739-70b5-43c4-8c90-b2c22014f18b/siteRestoreArtifactsBulkAdditionRequests')
	.version('beta')
	.post(siteRestoreArtifactsBulkAdditionRequest);

```