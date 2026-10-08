---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteExclusionUnitsBulkAdditionJob = await client.api('/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/siteExclusionUnitsBulkAdditionJobs/4b014d8c-71fe-4d00-a01a-31850bc5b32c')
	.version('beta')
	.get();

```