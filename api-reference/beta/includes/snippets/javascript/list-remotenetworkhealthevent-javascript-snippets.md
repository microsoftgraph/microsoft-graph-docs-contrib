---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let remoteNetworks = await client.api('/networkAccess/logs/remoteNetworks')
	.version('beta')
	.get();

```