---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let updatePolicies = await client.api('/admin/windows/updates/updatePolicies')
	.version('beta')
	.get();

```