---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tokenLifetimePolicies = await client.api('/applications/3ccc9971-9ae7-45d6-8de8-263fd25fe116/tokenLifetimePolicies')
	.version('beta')
	.get();

```