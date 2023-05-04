---
title: "Use privileged identity management (PIM) to update Azure AD rules"
description: "Learn how to use the PIM API in Microsoft Graph to update Azure AD rules."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: rianakarim
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "governance"
ms.date: 12/07/2022
---

# Use privileged identity management (PIM) APIs in Microsoft Graph to update Azure AD rules

The following article provides examples for using Microsoft Graph APIs to update different rules that are assigned to Azure AD roles through Privileged Identity Management (PIM). To understand the structure of role settings in PIM, see [Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph](identity-governance-pim-rules-overview.md).

When updating the rules, you must include the `@odata.type` for the derived type in the request body. For example, to update an activation rule of ID `Enablement_EndUser_Assignment`, you must include `"@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"`.

If successful, all requests return `204 No Content` response codes.

## Prerequisites

+ Have an understanding of [privileged identity management APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) for managing Azure AD roles.
+ Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. To call Microsoft Graph APIs in this tutorial, you need to use an account with the *Global Administrator* or *Privileged Role Administrator* roles.
+ Grant yourself the `RoleManagementPolicy.ReadWrite.Directory` delegated permission.

## Example 1: Update the activation maximum duration

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Expiration_EndUser_Assignment`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-Expiration_EndUser_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Expiration_EndUser_Assignment
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/how-to-pim-update-rules-expiration-enduser-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/how-to-pim-update-rules-expiration-enduser-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/how-to-pim-update-rules-expiration-enduser-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/how-to-pim-update-rules-expiration-enduser-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/how-to-pim-update-rules-expiration-enduser-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/how-to-pim-update-rules-expiration-enduser-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Example 2: Update the justification, MFA, and ticketing rules required on activation 

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyEnablementRule](/graph/api/resources/unifiedrolemanagementpolicyenablementrule)
+ Microsoft Graph rule ID: `Enablement_EndUser_Assignment`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-Enablement_EndUser_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Enablement_EndUser_Assignment
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/how-to-pim-update-rules-enablement-enduser-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/how-to-pim-update-rules-enablement-enduser-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/how-to-pim-update-rules-enablement-enduser-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/how-to-pim-update-rules-enablement-enduser-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/how-to-pim-update-rules-enablement-enduser-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/how-to-pim-update-rules-enablement-enduser-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Example 3: Require approval to activate

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyApprovalRule](/graph/api/resources/unifiedrolemanagementpolicyapprovalrule)
+ Microsoft Graph rule ID: `Approval_EndUser_Assignment`

<!--
Questions/Issues:
1. By default, the primaryApprovers and escalationApprovers are always blank. What's the default behavior - who gets to approve? Do we call it out currently in docs?
2. I cannot set escalationApprovers. Request succeeds but escalationApprovers isn't populated.
-->

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-Approval_EndUser_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Approval_EndUser_Assignment
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
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
    },
    "setting": {
        "@odata.type": "microsoft.graph.approvalSettings",
        "isApprovalRequired": true,
        "isApprovalRequiredForExtension": false,
        "isRequestorJustificationRequired": true,
        "approvalMode": "SingleStage",
        "approvalStages": [
            {
                "@odata.type": "microsoft.graph.unifiedApprovalStage",
                "approvalStageTimeOutInDays": 1,
                "isApproverJustificationRequired": true,
                "escalationTimeInMinutes": 0,
                "primaryApprovers": [
                    {
                        "@odata.type": "#microsoft.graph.singleUser",
                        "userId": "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
                    },
                    {
                        "@odata.type": "#microsoft.graph.groupMembers",
                        "groupId": "14f2746d-7d6f-4ac6-acd8-8cac318b041b"
                    }
                ],
                "isEscalationEnabled": false,
                "escalationApprovers": []
            }
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/how-to-pim-update-rules-approval-enduser-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/how-to-pim-update-rules-approval-enduser-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/how-to-pim-update-rules-approval-enduser-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/how-to-pim-update-rules-approval-enduser-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/how-to-pim-update-rules-approval-enduser-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/how-to-pim-update-rules-approval-enduser-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Example 4: Set expiration of eligible assignment 

+ Category of rule: Activation rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Expiration_Admin_Eligibility`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-Expiration_Admin_Eligibility"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Expiration_Admin_Eligibility
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/how-to-pim-update-rules-expiration-admin-eligibility-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/how-to-pim-update-rules-expiration-admin-eligibility-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/how-to-pim-update-rules-expiration-admin-eligibility-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/how-to-pim-update-rules-expiration-admin-eligibility-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/how-to-pim-update-rules-expiration-admin-eligibility-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/how-to-pim-update-rules-expiration-admin-eligibility-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Example 5: Set expiration of active assignment

+ Category of rule: Assignment rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Expiration_Admin_Assignment`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-Expiration_Admin_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Expiration_Admin_Assignment
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/how-to-pim-update-rules-expiration-admin-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/how-to-pim-update-rules-expiration-admin-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/how-to-pim-update-rules-expiration-admin-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/how-to-pim-update-rules-expiration-admin-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/how-to-pim-update-rules-expiration-admin-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/how-to-pim-update-rules-expiration-admin-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Example 6: Set the justification and MFA requirements for active assignment

+ Category of rule: Assignment rule
+ Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
+ Microsoft Graph rule ID: `Enablement_Admin_Assignment`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-Enablement_Admin_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Enablement_Admin_Assignment
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/how-to-pim-update-rules-enablement-admin-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/how-to-pim-update-rules-enablement-admin-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/how-to-pim-update-rules-enablement-admin-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/how-to-pim-update-rules-enablement-admin-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/how-to-pim-update-rules-enablement-admin-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/how-to-pim-update-rules-enablement-admin-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph](identity-governance-pim-rules-overview.md)
+ [Configure Azure AD role settings in Privileged Identity Management - Azure portal](/azure/active-directory/privileged-identity-management/pim-how-to-change-default-settings)
