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
  languageTag: 'en-us',
  planTitle: 'Order Tracking',
  buckets: [
    {
        '@odata.type': 'microsoft.graph.plannerPlanConfigurationBucketLocalization',
        externalBucketId: 'deliveryBucket',
        name: 'Deliveries'
    },
    {
        '@odata.type': 'microsoft.graph.plannerPlanConfigurationBucketLocalization',
        externalBucketId: 'storePickupBucket',
        name: 'Pickup'
    },
    {
        '@odata.type': 'microsoft.graph.plannerPlanConfigurationBucketLocalization',
        externalBucketId: 'specialOrdersBucket',
        name: 'Special Orders'
    },
    {
        '@odata.type': 'microsoft.graph.plannerPlanConfigurationBucketLocalization',
        externalBucketId: 'returnProcessingBucket',
        name: 'Customer Returns'
    }
  ]
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations')
	.version('beta')
	.post(plannerPlanConfigurationLocalization);

```