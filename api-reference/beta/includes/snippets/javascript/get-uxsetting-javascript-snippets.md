---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let uxSetting = await client.api('/admin/entra/uxSetting')
	.version('beta')
	.get();

```