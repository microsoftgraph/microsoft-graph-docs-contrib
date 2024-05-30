---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let indicators = await client.api('/security/threatIntelligence/articles/a272d5ab/indicators')
	.version('beta')
	.get();

```