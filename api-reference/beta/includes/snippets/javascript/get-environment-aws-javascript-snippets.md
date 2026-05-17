---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let environment = await client.api('/security/zones/05cfec937c214892a14448562ef4bf4a/environments/181994123251')
	.version('beta')
	.get();

```