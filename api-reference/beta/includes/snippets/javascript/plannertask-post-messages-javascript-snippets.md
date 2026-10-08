---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerTaskChatMessage = {
  content: 'This is a new chat message'
};

await client.api('/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages')
	.version('beta')
	.post(plannerTaskChatMessage);

```