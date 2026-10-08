---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentInstance = {
  displayName: 'Teams Meeting Scheduler Agent'
};

await client.api('/agentRegistry/agentInstances/{agentInstanceId}')
	.version('beta')
	.update(agentInstance);

```