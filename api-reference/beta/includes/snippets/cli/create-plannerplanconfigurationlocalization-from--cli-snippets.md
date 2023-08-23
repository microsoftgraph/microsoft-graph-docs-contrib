---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta solutions business-scenarios planner plan-configuration localizations create --business-scenario-id {businessScenario-id} --body '{\
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",\
  "languageTag": "en-us",\
  "planTitle": "Order Tracking",\
  "buckets": [\
    {\
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",\
        "externalBucketId": "deliveryBucket",\
        "name": "Deliveries"\
    },\
    {\
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",\
        "externalBucketId": "storePickupBucket",\
        "name": "Pickup"\
    },\
    {\
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",\
        "externalBucketId": "specialOrdersBucket",\
        "name": "Special Orders"\
    },\
    {\
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",\
        "externalBucketId": "returnProcessingBucket",\
        "name": "Customer Returns"\
    }\
  ]\
}\
'

```