---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleGroup = await client.api('/external/industryData/roleGroups/students')
	.version('beta')
	.get();

```