---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta network-access filtering-policies create --body '{\
    "name": "Block Social",\
    "policyRules": [\
        {\
            "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",\
            "name": "Block Social",\
            "ruleType": "webCategory",\
            "destinations": [\
                {\
                    "@odata.type": "#microsoft.graph.networkaccess.webCategory",\
                    "name": "SocialNetworking"\
                }\
            ]\
        }\
    ],\
    "action": "block",\
    "description": "Block Social Sites",\
    "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy"\
}\
'

```