---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let referenceDefinitions = await client.api('/external/industryData/referenceDefinitions')
	.version('beta')
	.get();

```