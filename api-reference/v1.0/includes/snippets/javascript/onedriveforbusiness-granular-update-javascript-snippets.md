---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oneDriveForBusinessRestoreSession = {
  'granularDriveRestoreArtifacts@delta': [
    {
      browseSessionId: 'm_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE',
      itemKey: 'a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2'
    },
    {
      '@removed': {
        reason: 'changed'
      },
      id: 'a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2'
    }
  ]
};

await client.api('/solutions/backupRestore/oneDriveForBusinessRestoreSessions/43e0638e-3ad7-4c7e-8749-72175d046e30')
	.update(oneDriveForBusinessRestoreSession);

```