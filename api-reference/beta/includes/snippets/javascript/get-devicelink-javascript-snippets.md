---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceLink = await client.api('/networkAccess/connectivity/remoteNetworks/dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04/deviceLinks/47aab2e9-7f5c-42ba-bbfc-1b049193126a')
	.version('beta')
	.get();

```