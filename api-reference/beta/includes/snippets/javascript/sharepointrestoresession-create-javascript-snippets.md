---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sharePointRestoreSession = {
  siteRestoreArtifacts: [
    {
      restorePoint: { '@odata.id': '1f1fccc3-a642-4f61-bf49-f37b9a888279' },
      destinationType: 'inPlace'
    },
    {
      restorePoint: { '@odata.id': '1f1fccc3-a642-4f61-bf49-f37b9a888280' },
      destinationType: 'inPlace'
    }
  ]
};

await client.api('/solutions/backupRestore/sharePointRestoreSessions')
	.version('beta')
	.post(sharePointRestoreSession);

```