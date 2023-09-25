---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/windows/updates/deploymentAudiences/7f960f66-b6ed-6d54-f24a-9b1021a1d17f')
	.version('beta')
	.delete();

```