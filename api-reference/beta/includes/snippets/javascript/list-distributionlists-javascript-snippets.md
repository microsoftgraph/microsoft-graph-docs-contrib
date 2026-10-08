---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let distributionLists = await client.api('/me/distributionLists')
	.version('beta')
	.get();

```