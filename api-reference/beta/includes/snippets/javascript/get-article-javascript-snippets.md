---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let articles = await client.api('/security/threatIntelligence/articles')
	.version('beta')
	.get();

```