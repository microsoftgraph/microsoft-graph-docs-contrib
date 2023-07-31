---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc policies role-management-policies rules patch --unified-role-management-policy-id {unifiedRoleManagementPolicy-id} --unified-role-management-policy-rule-id {unifiedRoleManagementPolicyRule-id} --body '{\
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",\
    "id": "Enablement_Admin_Assignment",\
    "enabledRules": [\
        "Justification",\
        "MultiFactorAuthentication"\
    ],\
    "target": {\
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",\
        "caller": "Admin",\
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