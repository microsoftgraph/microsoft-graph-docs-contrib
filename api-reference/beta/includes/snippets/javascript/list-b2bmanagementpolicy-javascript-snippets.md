---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let b2bManagementPolicies = await client.api('/policies/b2bManagementPolicies')
	.version('beta')
	.get();

```