---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta network-access filtering-policies policy-rules create --filtering-policy-id {filteringPolicy-id} --body '{\
    "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",\
    "name": "Block Alcohol",\
    "ruleType": "webCategory",\
    "destinations": [\
        {\
            "@odata.type": "#microsoft.graph.networkaccess.webCategory",\
            "name": "AlcoholAndTobacco"\
        }\
    ]\
}\
'

```