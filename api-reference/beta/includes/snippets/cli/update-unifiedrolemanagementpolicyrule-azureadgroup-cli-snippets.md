---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies role-management-policies rules patch --unified-role-management-policy-id {unifiedRoleManagementPolicy-id} --unified-role-management-policy-rule-id {unifiedRoleManagementPolicyRule-id} --body '{\
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",\
    "id": "Expiration_EndUser_Assignment",\
    "isExpirationRequired": true,\
    "maximumDuration": "PT1H45M",\
    "target": {\
        "caller": "EndUser",\
        "operations": [\
            "All"\
        ],\
        "level": "Assignment",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
    }\
}\
'

```