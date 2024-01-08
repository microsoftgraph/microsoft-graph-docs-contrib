---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sourceSystemDefinition = {
  vendor: 'LMS Vendor'
};

await client.api('/external/industryData/sourceSystems/d1cde272-4585-462c-4725-08dad18eb580')
	.version('beta')
	.update(sourceSystemDefinition);

```