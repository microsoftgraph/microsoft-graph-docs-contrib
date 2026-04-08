---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let environments = await client.api('/security/zones/05cfec937c214892a14448562ef4bf4a/environments')
	.version('beta')
	.get();

```