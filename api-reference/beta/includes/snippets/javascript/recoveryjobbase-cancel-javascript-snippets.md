---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directory/recovery/jobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4/cancel')
	.version('beta')
	.post();

```