---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlanConfigurationLocalization = {
  '@odata.type': '#microsoft.graph.plannerPlanConfigurationLocalization',
  planTitle: 'Order Tracking',
  buckets: [
    {
      externalBucketId: 'deliveryBucket',
      name: 'Deliveries'
    },
    {
      externalBucketId: 'storePickupBucket',
      name: 'Pickup'
    },
    {
      externalBucketId: 'specialOrdersBucket',
      name: 'Special Orders'
    },
    {
      externalBucketId: 'returnProcessingBucket',
      name: 'Customer Returns'
    }
  ]
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations/en-us')
	.version('beta')
	.update(plannerPlanConfigurationLocalization);

```