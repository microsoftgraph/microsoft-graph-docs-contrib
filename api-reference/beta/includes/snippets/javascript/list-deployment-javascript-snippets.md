---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deploymentAudiences = await client.api('/admin/windows/updates/deploymentAudiences')
	.version('beta')
	.get();

```