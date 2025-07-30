---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let incidentTasks = await client.api('/security/incidentTasks')
	.version('beta')
	.get();

```