---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const businessScenarioTask = {
  '@odata.type': '#microsoft.graph.businessScenarioTask',
  title: 'Customer order #12010',
  percentComplete: 0,
  priority: 5,
  target: {
    '@odata.type': 'microsoft.graph.businessScenarioGroupTarget',
    taskTargetKind: 'group',
    groupId: '7a339254-4b2b-4410-b295-c890a16776ee'
  },
  businessScenarioProperties: {
    externalObjectId: 'Order#12010',
    externalContextId: 'Warehouse-CA-36',
    externalObjectVersion: '000001',
    webUrl: 'https://ordertracking.contoso.com/view?id=12010',
    externalBucketId: 'deliveryBucket'
  }
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks')
	.version('beta')
	.post(businessScenarioTask);

```