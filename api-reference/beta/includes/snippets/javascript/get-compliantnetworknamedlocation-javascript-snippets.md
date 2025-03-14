---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let namedLocation = await client.api('/identity/conditionalAccess/namedLocations/3d46dbda-8382-466a-856d-eb00cbc6b910')
	.version('beta')
	.get();

```