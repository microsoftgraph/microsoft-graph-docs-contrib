---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let virtualEventSession = await client.api('/solutions/virtualEvents/events/{virtualEventId}/sessions/{virtualEventSessionId}')
	.version('beta')
	.get();

```