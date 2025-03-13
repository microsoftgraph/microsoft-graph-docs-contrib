---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alerts_v2 = await client.api('/security/alerts_v2')
	.version('beta')
	.get();

```