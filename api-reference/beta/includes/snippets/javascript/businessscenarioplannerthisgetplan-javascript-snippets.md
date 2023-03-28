---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const businessScenarioPlanReference = {
  target: {
      '@odata.type': 'microsoft.graph.businessScenarioGroupTarget',
      taskTargetKind: 'group',
      groupId: '7a339254-4b2b-4410-b295-c890a16776ee'
  }
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/getPlan')
	.version('beta')
	.post(businessScenarioPlanReference);

```