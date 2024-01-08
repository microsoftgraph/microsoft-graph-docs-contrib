---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let device = await client.api('/devices/6a59ea83-02bd-468f-a40b-f2c3d1821983')
	.version('beta')
	.select('id,extensionAttributes')
	.get();

```