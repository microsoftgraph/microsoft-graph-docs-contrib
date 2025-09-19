---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/security/incidentTasks/213213/executeResponseAction')
	.version('beta')
	.post();

```