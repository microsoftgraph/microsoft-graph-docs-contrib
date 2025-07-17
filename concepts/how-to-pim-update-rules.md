---
title: "Update rules in privileged identity management (PIM)"
description: "Learn how to update rules in PIM using Microsoft Graph."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: rianakarim
ms.localizationpriority: medium
ms.topic: how-to
ms.subservice: entra-id-governance
ms.date: 09/24/2024
#Customer intent: As a developer, I want to update settings and rules in Privileged Identity Management (PIM) using Microsoft Graph APIs, so that I can manage the activation, approval, and expiration settings for different roles and groups in PIM.
---

# Update rules in PIM using Microsoft Graph

The following article provides examples for using Microsoft Graph APIs to update different rules that are assigned to Microsoft Entra roles or groups through Privileged Identity Management (PIM). To understand the structure of rules in PIM, see [Working with rules in PIM using Microsoft Graph](identity-governance-pim-rules-overview.md).

When updating the rules, you must include the `@odata.type` for the derived type in the request body. For example, to update an activation rule of ID `Enablement_EndUser_Assignment`, you must include `"@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"`.

If successful, all requests return `204 No Content` response codes.

> [!NOTE]
> PIM for groups APIs are currently available on the `beta` endpoint only.

## Prerequisites

+ Have an understanding of [PIM for Microsoft Entra roles APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) or [PIM for groups APIs](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview).
  + Understand the [mapping of the rules to the different categories of rules in PIM](identity-governance-pim-rules-overview.md).
+ In this article, you call the APIs in a [delegated scenario](/graph/auth-v2-user).
  + Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) with administrative privileges to manage PIM rules. The *Privileged Role Administrator* role is the least privileged role sufficient to manage PIM rules.
  + Depending on operations you want to carry out, grant yourself one of the following delegated permissions:
    + To manage the rules for Microsoft Entra roles: *RoleManagementPolicy.ReadWrite.Directory*
    + To manage the rules for groups: *RoleManagementPolicy.ReadWrite.AzureADGroup*

## How to find the settings for a Microsoft Entra role

Consider a Microsoft Entra role like *Application Administrator*. The permanent immutable template ID for the role in Microsoft Entra ID is `9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3`. 

To use the PIM APIs to discover the settings for the *Application Administrator* role, query the role management policy that Microsoft Entra ID has assigned to the role by using the [unifiedRoleManagementPolicyAssignment resource type](/graph/api/resources/unifiedrolemanagementpolicyassignment) as follows:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-update-rules-prereq"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-prereq-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-prereq-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-prereq-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-prereq-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-prereq-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-prereq-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-prereq-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-prereq-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The response returns an object similar to the following response that contains a policy assignment ID and a policy ID.

```http
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET policies/roleManagementPolicyAssignments?$select=policyId,roleDefinitionId",
    "value": [
        {
            "id": "DirectoryRole_714a5b9b-97d1-45af-937f-6a998297bc52_0653a6f0-2dca-4655-88fe-b43a086fb66a_9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
            "policyId": "DirectoryRole_714a5b9b-97d1-45af-937f-6a998297bc52_0653a6f0-2dca-4655-88fe-b43a086fb66a",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "roleDefinitionId": "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
        }
    ]
}
```

Use the **policyId** object to query and manage the corresponding rules for the role.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-expiration-enduser-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-expiration-enduser-assignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-expiration-enduser-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-expiration-enduser-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-expiration-enduser-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-expiration-enduser-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-expiration-enduser-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-expiration-enduser-assignment-python-snippets.md)]
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-enablement-enduser-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-enablement-enduser-assignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-enablement-enduser-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-enablement-enduser-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-enablement-enduser-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-enablement-enduser-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-enablement-enduser-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-enablement-enduser-assignment-python-snippets.md)]
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-approval-enduser-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-approval-enduser-assignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-approval-enduser-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-approval-enduser-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-approval-enduser-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-approval-enduser-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-approval-enduser-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-approval-enduser-assignment-python-snippets.md)]
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-expiration-admin-eligibility-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-expiration-admin-eligibility-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-expiration-admin-eligibility-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-expiration-admin-eligibility-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-expiration-admin-eligibility-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-expiration-admin-eligibility-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-expiration-admin-eligibility-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-expiration-admin-eligibility-python-snippets.md)]
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-expiration-admin-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-expiration-admin-assignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-expiration-admin-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-expiration-admin-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-expiration-admin-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-expiration-admin-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-expiration-admin-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-expiration-admin-assignment-python-snippets.md)]
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-pim-update-rules-enablement-admin-assignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/how-to-pim-update-rules-enablement-admin-assignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-pim-update-rules-enablement-admin-assignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-pim-update-rules-enablement-admin-assignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-pim-update-rules-enablement-admin-assignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-pim-update-rules-enablement-admin-assignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-pim-update-rules-enablement-admin-assignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-pim-update-rules-enablement-admin-assignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Overview of rules for Microsoft Entra roles in privileged identity management (PIM) APIs in Microsoft Graph](identity-governance-pim-rules-overview.md)
+ [Configure Microsoft Entra role settings using the Microsoft Entra admin center](/entra/id-governance/privileged-identity-management/pim-how-to-change-default-settings)
