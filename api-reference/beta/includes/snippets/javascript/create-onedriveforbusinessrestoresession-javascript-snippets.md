---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oneDriveForBusinessRestoreSession = {
  driveRestoreArtifacts: [
    {
      restorePoint: { '@odata.id': '1f1fccc3-a642-4f61-bf49-f37b9a888279' },
      destinationType: 'new'
    },
    {
      restorePoint: { '@odata.id': '1f1fccc3-a642-4f61-bf49-f37b9a888280' },
      destinationType: 'new'
    }
  ]
};

await client.api('/solutions/backupRestore/oneDriveForBusinessRestoreSessions')
	.version('beta')
	.post(oneDriveForBusinessRestoreSession);

```