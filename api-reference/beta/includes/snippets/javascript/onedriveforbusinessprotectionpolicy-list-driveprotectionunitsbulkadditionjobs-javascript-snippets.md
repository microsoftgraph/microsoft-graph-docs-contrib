---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveProtectionUnitsBulkAdditionJobs = await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveProtectionUnitsBulkAdditionJobs')
	.version('beta')
	.get();

```