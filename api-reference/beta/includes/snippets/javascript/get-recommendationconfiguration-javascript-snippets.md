---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recommendationConfiguration = await client.api('/directory/recommendationConfiguration')
	.version('beta')
	.get();

```