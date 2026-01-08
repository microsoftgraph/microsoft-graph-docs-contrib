---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delegators = await client.api('/me/communications/callSettings/delegators')
	.version('beta')
	.get();

```