---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let outboundSharedUserProfiles = await client.api('/directory/outboundSharedUserProfiles')
	.version('beta')
	.get();

```