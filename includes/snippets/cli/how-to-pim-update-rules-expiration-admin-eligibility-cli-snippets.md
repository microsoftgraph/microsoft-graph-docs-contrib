---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc policies role-management-policies rules patch --unified-role-management-policy-id {unifiedRoleManagementPolicy-id} --unified-role-management-policy-rule-id {unifiedRoleManagementPolicyRule-id} --body '{\
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",\
    "id": "Expiration_Admin_Eligibility",\
    "isExpirationRequired": true,\
    "maximumDuration": "P90D",\
    "target": {\
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",\
        "caller": "Admin",\
        "operations": [\
            "All"\
        ],\
        "level": "Eligibility",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
    }\
}\
'

```