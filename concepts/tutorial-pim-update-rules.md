---
title: "Use privileged identity management (PIM) to update Azure AD rules"
description: "Learn how to use the PIM API in Microsoft Graph to update Azure AD rules."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "applications"
---

# Use privileged identity management (PIM) APIs in Microsoft Graph to update Azure AD rules

The following article provides examples for updating different rules that are assigned to Azure AD roles through privileged identity management. To understand the structure of role settings in PIM, see [Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph](identity-governance-pim-rules-overview.md).

When updating the rules, you must include the `@odata.type` for the derived type in the request body. For example, to update an activation rule of ID `Enablement_EndUser_Assignment`, you must include `"@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"`.

If successful, all requests return `204 No Content` response codes.

## Prerequisites

+ Have an understanding of [privileged identity management APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) for managing Azure AD roles.

## Example 1: Update the activation maximum duration

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Expiration_EndUser_Assignment`
+ Description:

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Expiration_EndUser_Assignment"
}-->
```http
https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_06f96237-e50f-4355-aced-4dc29c5243c6/rules/Expiration_EndUser_Assignment
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
    "id": "Expiration_EndUser_Assignment",
    "isExpirationRequired": true,
    "maximumDuration": "PT1H45M",
    "target": {
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
        "caller": "EndUser",
        "operations": [
            "All"
        ],
        "level": "Assignment",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```

## Example 2: Update the justification, MFA, and ticketing rules required on activation 

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyEnablementRule](/graph/api/resources/unifiedrolemanagementpolicyenablementrule)
+ Microsoft Graph rule ID: `Enablement_EndUser_Assignment`
+ Description:

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Enablement_EndUser_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_06f96237-e50f-4355-aced-4dc29c5243c6/rules/Enablement_EndUser_Assignment
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
    "id": "Enablement_EndUser_Assignment",
    "enabledRules": [
        "Justification",
        "MultiFactorAuthentication",
        "Ticketing"
    ],
    "target": {
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
        "caller": "EndUser",
        "operations": [
            "All"
        ],
        "level": "Assignment",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```

## Example 3: Require approval to activate

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyApprovalRule](/graph/api/resources/unifiedrolemanagementpolicyapprovalrule)
+ Microsoft Graph rule ID: `Approval_EndUser_Assignment`
+ Description:

<!--

By default, the primaryApprovers and escalationApprovers are always blank. What's the default behavior? Do we call it out currently in docs?

-->

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Approval_EndUser_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_06f96237-e50f-4355-aced-4dc29c5243c6/rules/Approval_EndUser_Assignment
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
    "setting": {
        "isApprovalRequired": true,
        "isApprovalRequiredForExtension": false,
        "isRequestorJustificationRequired": true,
        "approvalMode": "SingleStage",
        "approvalStages": [
            {
                "approvalStageTimeOutInDays": 1,
                "isApproverJustificationRequired": true,
                "escalationTimeInMinutes": 0,
                "primaryApprovers": [
                    {
                        "id": "14f2746d-7d6f-4ac6-acd8-8cac318b041b",
                        "userType": "User",
                        "isBackup": "false"
                    }
                ],
                "isEscalationEnabled": true,
                "escalationApprovers": [
                    {
                        "id": "8afc02cb-4d62-4dba-b536-9f6d73e9be26",
                        "userType": "Group",
                        "isBackup": "true"
                    }
                ]
            }
        ]
    },
    "id": "Approval_EndUser_Assignment",
    "target": {
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
        "caller": "EndUser",
        "operations": [
            "All"
        ],
        "level": "Assignment",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```

## Example 4: Set expiration of eligible assignment 

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Expiration_Admin_Eligibility`
+ Description:

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Expiration_Admin_Eligibility"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_06f96237-e50f-4355-aced-4dc29c5243c6/rules/Expiration_Admin_Eligibility
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
    "id": "Expiration_Admin_Eligibility",
    "isExpirationRequired": true,
    "maximumDuration": "P90D",
    "target": {
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
        "caller": "Admin",
        "operations": [
            "All"
        ],
        "level": "Eligibility",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```

## Example 5: Set expiration of active assignment

+ Category of rule: Assignment rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Expiration_Admin_Assignment`
+ Description:

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Expiration_Admin_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_06f96237-e50f-4355-aced-4dc29c5243c6/rules/Expiration_Admin_Assignment
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
    "id": "Expiration_Admin_Assignment",
    "isExpirationRequired": true,
    "maximumDuration": "P90D",
    "target": {
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
        "caller": "Admin",
        "operations": [
            "All"
        ],
        "level": "Assignment",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```

## Example 6: Set the justification and MFA requirements for active assignment

+ Category of rule: Assignment rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Enablement_Admin_Assignment`

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Enablement_Admin_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_06f96237-e50f-4355-aced-4dc29c5243c6/rules/Enablement_Admin_Assignment
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
    "id": "Enablement_Admin_Assignment",
    "enabledRules": [
        "Justification",
        "MultiFactorAuthentication"
    ],
    "target": {
        "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
        "caller": "Admin",
        "operations": [
            "All"
        ],
        "level": "Assignment",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```


## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph](identity-governance-pim-rules-overview.md)
+ [Configure Azure AD role settings in Privileged Identity Management - Azure portal](/azure/active-directory/privileged-identity-management/pim-how-to-change-default-settings)