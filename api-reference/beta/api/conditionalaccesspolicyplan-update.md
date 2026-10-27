---
title: "Update conditionalAccessPolicyPlan"
description: "Update the properties of a conditionalAccessPolicyPlan object."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update conditionalAccessPolicyPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccesspolicyplan-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesspolicyplan-update-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-policy-plan-apis](../includes/rbac-for-apis/rbac-conditionalaccess-policy-plan-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /identity/conditionalAccess/plans/{conditionalAccessPolicyPlanId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|A free-text description of the plan's purpose and scope.|
|displayName|String|The administrator-defined display name for the plan.|
|owners|String collection|The IDs of users and groups recorded as metadata owners of the plan. Does not grant any role or permission to the plan.|
|sharedConditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|The conditions that apply to every rule in the plan. During evaluation, these conditions are combined with each rule's **conditions** property; rules can add conditions but can't remove plan-level conditions.|
|tags|String collection|The administrator-defined tags used to categorize and organize the plan.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_conditionalaccesspolicyplan"
}
-->
```http
PATCH https://graph.microsoft.com/beta/identity/conditionalAccess/plans/d1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a
Content-Type: application/json

{
  "description": "Requires compliant devices for employees and contractors.",
  "sharedConditions": {
    "platforms": {
      "includePlatforms": [
        "windows"
      ]
    }
  }
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
```http
HTTP/1.1 204 No Content
```
