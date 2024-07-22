---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions business-scenarios planner plan-configuration patch --business-scenario-id {businessScenario-id} --body '{\
  "@odata.type": "#microsoft.graph.plannerPlanConfiguration",\
  "defaultLanguage": "en-us",\
  "buckets": [\
    {\
      "externalBucketId": "deliveryBucket"\
    },\
    {\
      "externalBucketId": "storePickupBucket"\
    },\
    {\
      "externalBucketId": "specialOrdersBucket"\
    },\
    {\
      "externalBucketId": "returnProcessingBucket"\
    }\
  ]\
}\
'

```