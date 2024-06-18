---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sharePointRestoreSession = {
  'siteRestoreArtifacts@delta': [
    {
      restorePoint: { '@odata.id': '1b014d8c-71fe-4d00-a01a-31850bc5b32c' }, //Create a new site restore artifact and add it under the Restore Session.
      destinationType: 'new'
    },
    {
      restorePoint: { '@odata.id': '2b014d8c-71fe-4d00-a01a-31850bc5b32' },
      destinationType: 'new'
    },
    {
      restorePoint: { '@odata.id': '3b014d8c-71fe-4d00-a01a-31850bc5b32c' },
      destinationType: 'new'
    },
    {
      restorePoint: { '@odata.id': '4b014d8c-71fe-4d00-a01a-31850bc5b32c' },
      destinationType: 'new'
    },
    {
      '@removed': {
        reason: 'changed'
      },
      id: '959ba739-70b5-43c4-8c90-b2c22014f18a'
    },
    {
      '@removed': {
        reason: 'changed'
      },
      id: '959ba739-70b5-43c4-8c90-b2c22014f18b'
    },
    {
      '@removed': {
        reason: 'changed'
      },
      id: '959ba739-70b5-43c4-8c90-b2c22014f18c'
    }
  ]
};

await client.api('/solutions/backupRestore/sharepointRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952eessions')
	.version('beta')
	.update(sharePointRestoreSession);

```