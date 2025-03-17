---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveProtectionUnits = await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveProtectionUnits')
	.version('beta')
	.get();

```