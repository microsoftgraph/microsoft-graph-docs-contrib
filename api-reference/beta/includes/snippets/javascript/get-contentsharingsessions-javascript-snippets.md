---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contentSharingSessions = await client.api('/communications/calls/7531d31f-d10d-44de-802f-c569dbca451c/contentSharingSessions')
	.version('beta')
	.get();

```