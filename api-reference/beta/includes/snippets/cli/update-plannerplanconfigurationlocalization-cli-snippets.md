---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta solutions business-scenarios planner plan-configuration localizations patch --business-scenario-id {businessScenario-id} --planner-plan-configuration-localization-id {plannerPlanConfigurationLocalization-id} --body '{\
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",\
  "planTitle": "Order Tracking",\
  "buckets": [\
    {\
      "externalBucketId": "deliveryBucket",\
      "name": "Deliveries"\
    },\
    {\
      "externalBucketId": "storePickupBucket",\
      "name": "Pickup"\
    },\
    {\
      "externalBucketId": "specialOrdersBucket",\
      "name": "Special Orders"\
    },\
    {\
      "externalBucketId": "returnProcessingBucket",\
      "name": "Customer Returns"\
    }\
  ]\
}\
'

```