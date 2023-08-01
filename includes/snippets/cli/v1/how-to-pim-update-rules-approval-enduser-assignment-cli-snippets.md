---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc policies role-management-policies rules patch --unified-role-management-policy-id {unifiedRoleManagementPolicy-id} --unified-role-management-policy-rule-id {unifiedRoleManagementPolicyRule-id} --body '{\
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",\
    "id": "Approval_EndUser_Assignment",\
    "target": {\
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",\
        "caller": "EndUser",\
        "operations": [\
            "All"\
        ],\
        "level": "Assignment",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
    },\
    "setting": {\
        "@odata.type": "microsoft.graph.approvalSettings",\
        "isApprovalRequired": true,\
        "isApprovalRequiredForExtension": false,\
        "isRequestorJustificationRequired": true,\
        "approvalMode": "SingleStage",\
        "approvalStages": [\
            {\
                "@odata.type": "microsoft.graph.unifiedApprovalStage",\
                "approvalStageTimeOutInDays": 1,\
                "isApproverJustificationRequired": true,\
                "escalationTimeInMinutes": 0,\
                "primaryApprovers": [\
                    {\
                        "@odata.type": "#microsoft.graph.singleUser",\
                        "userId": "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"\
                    },\
                    {\
                        "@odata.type": "#microsoft.graph.groupMembers",\
                        "groupId": "14f2746d-7d6f-4ac6-acd8-8cac318b041b"\
                    }\
                ],\
                "isEscalationEnabled": false,\
                "escalationApprovers": []\
            }\
        ]\
    }\
}\
'

```