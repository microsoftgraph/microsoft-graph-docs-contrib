---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inboundFlows = await client.api('/external/industryData/inboundFlows')
	.version('beta')
	.get();

```