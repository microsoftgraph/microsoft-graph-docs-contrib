---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveProtectionRule = await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules/61633878-8321-4950-bfaf-ed285bdd1461')
	.version('beta')
	.get();

```