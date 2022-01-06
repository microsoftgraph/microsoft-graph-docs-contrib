---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const lists = {
    displayName: 'Shopping list'
};

await client.api('/me/tasks/lists')
	.version('beta')
	.post(lists);

```