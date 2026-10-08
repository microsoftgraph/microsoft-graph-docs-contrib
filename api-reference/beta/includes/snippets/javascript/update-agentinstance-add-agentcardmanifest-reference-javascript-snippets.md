---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentInstance = {
  'agentCardManifest@odata.bind': 'https://graph.microsoft.com/beta/agentRegistry/agentCardManifests(\'employee-assistant\')'
};

await client.api('/agentRegistry/agentInstances/{agentInstanceId}')
	.version('beta')
	.update(agentInstance);

```