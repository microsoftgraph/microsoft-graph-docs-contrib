---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deploymentAudience = {
};

await client.api('/admin/windows/updates/deploymentAudiences')
	.version('beta')
	.post(deploymentAudience);

```