---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta network-access filtering-policies policy-rules create --filtering-policy-id {filteringPolicy-id} --body '{\
    "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",\
    "name": "Block Gambling Sites",\
    "ruleType": "webCategory",\
    "destinations": [\
        {\
            "@odata.type": "#microsoft.graph.networkaccess.webCategory",\
            "name": "Gambling"\
        }\
    ]\
}\
'

```