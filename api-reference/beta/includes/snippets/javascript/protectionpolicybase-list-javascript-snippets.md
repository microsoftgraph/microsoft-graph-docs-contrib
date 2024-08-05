---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let protectionPolicies = await client.api('/solutions/backupRestore/ProtectionPolicies')
	.version('beta')
	.get();

```