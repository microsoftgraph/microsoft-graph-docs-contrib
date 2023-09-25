---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/external/industryData/inboundFlows/7bd62d17-8c37-4494-f68d-08daddab2911')
	.version('beta')
	.delete();

```