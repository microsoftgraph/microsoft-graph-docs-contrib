---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlanConfiguration = {
  '@odata.type': '#microsoft.graph.plannerPlanConfiguration',
  defaultLanguage: 'en-us',
  buckets: [
    {
      externalBucketId: 'deliveryBucket'
    },
    {
      externalBucketId: 'storePickupBucket'
    },
    {
      externalBucketId: 'specialOrdersBucket'
    },
    {
      externalBucketId: 'returnProcessingBucket'
    }
  ]
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration')
	.version('beta')
	.update(plannerPlanConfiguration);

```