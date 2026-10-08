---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentCardManifests = await client.api('/agentRegistry/agentCardManifests')
	.version('beta')
	.get();

```