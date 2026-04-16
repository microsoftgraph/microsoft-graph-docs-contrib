---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentCardManifest = await client.api('/agentRegistry/agentCardManifests/{agentCardManifestId}')
	.version('beta')
	.get();

```