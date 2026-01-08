---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxProtectionUnitsBulkAdditionJobs = await client.api('/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxProtectionUnitsBulkAdditionJobs')
	.get();

```