---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentInstance = {
  '@odata.id': 'https://graph.microsoft.com/beta/agentRegistry/agentInstances(\'agent-instance-id\')'
};

await client.api('/agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members/$ref')
	.version('beta')
	.post(agentInstance);

```