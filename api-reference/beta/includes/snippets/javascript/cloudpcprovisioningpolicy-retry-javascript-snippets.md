---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const retry = {
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4/retry')
	.version('beta')
	.post(retry);

```