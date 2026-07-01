---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let huntingSchemaResult = await client.api('/security/getHuntingSchema')
	.version('beta')
	.get();

```