---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxRestoreArtifactsBulkAdditionRequest = {
  displayName: 'Usermailbox-BulkRestoreArtifacts',
  mailboxes: [
    'contoso1@micorosft.com',
    'consotos2@microsoft.com',
    'contoso3@microsoft.com'
  ],
  protectionTimePeriod: {
    startDateTime: '2021-01-01T00:00:00Z',
    endDateTime: '2021-01-08T00:00:00Z'
  },
  destinationType: 'new',
  tags: 'fastRestore',
  restorePointPreference: 'latest'
};

await client.api('/solutions/backupRestore/exchangeRestoreSessions/dc3a3fc8-eb4b-45eb-9ca6-4955696344b8/mailboxRestoreArtifactsBulkAdditionRequests')
	.version('beta')
	.post(mailboxRestoreArtifactsBulkAdditionRequest);

```