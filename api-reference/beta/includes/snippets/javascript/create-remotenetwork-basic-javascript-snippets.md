---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const remoteNetwork = {
    name: 'Bellevue branch',
    region: 'canadaEast'
};

await client.api('/networkAccess/connectivity/remoteNetworks')
	.version('beta')
	.post(remoteNetwork);

```