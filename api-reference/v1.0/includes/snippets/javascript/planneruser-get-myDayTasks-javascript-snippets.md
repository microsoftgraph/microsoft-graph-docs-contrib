---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let myDayTasks = await client.api('/me/planner/myDayTasks')
	.version('beta')
	.get();

```