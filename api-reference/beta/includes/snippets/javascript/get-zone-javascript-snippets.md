---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let zone = await client.api('/security/zones/03f98aee-fee9-06b4-e5d3-647ef536acac')
	.version('beta')
	.get();

```