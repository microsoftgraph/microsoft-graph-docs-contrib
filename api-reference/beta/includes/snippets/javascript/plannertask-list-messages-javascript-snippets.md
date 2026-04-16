---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messages = await client.api('/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages')
	.version('beta')
	.get();

```