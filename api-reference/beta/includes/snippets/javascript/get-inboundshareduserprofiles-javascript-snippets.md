---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inboundSharedUserProfiles = await client.api('/directory/inboundSharedUserProfiles')
	.version('beta')
	.get();

```