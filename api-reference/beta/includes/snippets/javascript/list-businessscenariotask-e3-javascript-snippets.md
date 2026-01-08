---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tasks = await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks')
	.version('beta')
	.filter('target/microsoft.graph.businessScenarioGroupTarget/groupId eq \'7a339254-4b2b-4410-b295-c890a16776ee\'')
	.get();

```