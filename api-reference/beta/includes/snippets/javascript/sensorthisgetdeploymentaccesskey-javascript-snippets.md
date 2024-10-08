---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deploymentAccessKeyType = await client.api('/security/identities/sensors/getDeploymentAccessKey')
	.version('beta')
	.get();

```