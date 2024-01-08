---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sourceSystemDefinition = await client.api('/external/industryData/sourceSystems/0190210e-8827-4747-6f2b-08dacc885e72')
	.version('beta')
	.get();

```