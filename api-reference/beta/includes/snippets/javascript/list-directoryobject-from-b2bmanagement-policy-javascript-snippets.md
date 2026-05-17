---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appliesTo = await client.api('/policies/b2bManagementPolicies/f596ef0d-42f9-0359-1aaa-12d02b38802a/appliesTo')
	.version('beta')
	.get();

```