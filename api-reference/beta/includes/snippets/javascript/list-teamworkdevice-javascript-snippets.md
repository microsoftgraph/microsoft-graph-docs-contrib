---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let devices = await client.api('/teamwork/devices')
	.version('beta')
	.get();

```