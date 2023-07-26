---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attributeSets = await client.api('/directory/attributeSets')
	.get();

```