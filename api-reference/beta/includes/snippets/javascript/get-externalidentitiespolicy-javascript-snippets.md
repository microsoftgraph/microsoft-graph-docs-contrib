---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalIdentitiesPolicy = await client.api('/policies/externalIdentitiesPolicy')
	.version('beta')
	.get();

```