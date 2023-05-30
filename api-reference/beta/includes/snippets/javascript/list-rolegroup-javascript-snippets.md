---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleGroups = await client.api('/external/industryData/roleGroups')
	.version('beta')
	.get();

```