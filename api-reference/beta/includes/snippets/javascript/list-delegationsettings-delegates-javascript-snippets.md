---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delegates = await client.api('/me/communications/callSettings/delegates')
	.version('beta')
	.get();

```