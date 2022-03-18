---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const baseTaskList = {
    '@odata.type': '#microsoft.graph.taskList',
    displayName: 'Travel Plan'
};

await client.api('/me/tasks/lists/AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFs')
	.version('beta')
	.update(baseTaskList);

```