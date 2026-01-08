---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let incidentTask = await client.api('/security/incidentTasks/213213')
	.version('beta')
	.get();

```