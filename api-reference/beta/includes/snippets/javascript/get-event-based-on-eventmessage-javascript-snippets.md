---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let message = await client.api('/me/messages/AAMkADYAAAImV_jAAA=/')
	.version('beta')
	.expand('microsoft.graph.eventMessage/event')
	.get();

```