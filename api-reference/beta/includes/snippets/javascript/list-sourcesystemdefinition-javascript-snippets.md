---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sourceSystems = await client.api('/external/industryData/sourceSystems')
	.version('beta')
	.get();

```