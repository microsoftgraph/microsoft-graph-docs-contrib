---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oneDriveForBusinessProtectionPolicy = {
  displayName: 'One Drive  Policy - Inadvertent data loss',
  'driveProtectionUnits@delta': [
    {
      userId: '1b014d8c-71fe-4d00-a01a-31850bc5b32c'
    },
    {
      userId: '2b014d8c-71fe-4d00-a01a-31850bc5b32c'
    },
    {
      '@removed': {
        reason: 'changed'
      },
      id: '4267e382-71a9-4c07-bef7-bda97e09c0d2'
    },
    {
      '@removed': {
        reason: 'changed'
      },
      id: '3667e382-71a9-4c07-bef7-bda97e09c0d2'
    }
  ]
};

await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e')
	.version('beta')
	.update(oneDriveForBusinessProtectionPolicy);

```