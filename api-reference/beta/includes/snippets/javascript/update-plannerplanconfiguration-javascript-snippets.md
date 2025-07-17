---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlanConfiguration = {
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
  ],
  localizations: [
    {
      id: 'en-us',
      languageTag: 'en-us',
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
    },
    {
      id: 'es-es',
      languageTag: 'es-es',
      planTitle: 'Seguimiento de pedidos',
      buckets: [
        {
          externalBucketId: 'deliveryBucket',
          name: 'Entregas'
        },
        {
          externalBucketId: 'storePickupBucket',
          name: 'Recogida'
        },
        {
          externalBucketId: 'specialOrdersBucket',
          name: 'Pedidos especiales'
        },
        {
          externalBucketId: 'specialOrdersBucket',
          name: 'Devoluciones de clientes'
        }
      ]
    }
  ]
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration')
	.version('beta')
	.update(plannerPlanConfiguration);

```