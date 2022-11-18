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

When updating the rules, you must include the @odata.type for the derived type.

If successful, all requests return `204 No Content` response codes.

## Prerequisites

+ [Understand privileged identity management]
+ []

## Example 1: Update the activation maximum duration

- Category of rule: Activation rule
- Microsoft Graph [rule type](/graph/api/resources/unifiedrolemanagementpolicyrule): [unifiedRoleManagementPolicyExpirationRule](/graph/api/resources/unifiedrolemanagementpolicyexpirationrule)
- Microsoft Graph rule ID: `Expiration_EndUser_Assignment`

<!-- {
  "blockType": "request",
  "name": "tutorial-pim-update-rules-Expiration_EndUser_Assignment"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/roleManagementPolicies/DirectoryRole_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9/rules/Expiration_EndUser_Assignment
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

## Example 2: 





## See also

+ [Overview of role management through the privileged identity management (PIM) API](/graph/api/resources/privilegedidentitymanagementv3-overview)
+ [Overview of rules for Azure AD roles in privileged identity management (PIM) APIs in Microsoft Graph](identity-governance-pim-rules-overview.md)
+ [Configure Azure AD role settings in Privileged Identity Management - Azure portal](/azure/active-directory/privileged-identity-management/pim-how-to-change-default-settings)