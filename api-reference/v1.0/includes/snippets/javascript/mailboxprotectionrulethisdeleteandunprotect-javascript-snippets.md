---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/solutions/backupRestore/exchangeProtectionPolicies/6b0991b9-e7d4-4794-86fa-2a3f2a4e3177/mailboxInclusionRules/52147fb9-2682-47bc-a8f6-6c38c1ff498d/deleteAndUnprotect')
	.post();

```