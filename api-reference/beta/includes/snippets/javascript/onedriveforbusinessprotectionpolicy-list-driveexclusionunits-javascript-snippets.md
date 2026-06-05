---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveExclusionUnits = await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveExclusionUnits')
	.version('beta')
	.get();

```