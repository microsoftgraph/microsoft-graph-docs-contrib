---
title: "Update conditionalAccessPolicyRule"
description: "Update the properties of a conditionalAccessPolicyRule object."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update conditionalAccessPolicyRule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccesspolicyrule-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesspolicyrule-update-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-policy-plan-apis](../includes/rbac-for-apis/rbac-conditionalaccess-policy-plan-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /identity/conditionalAccess/plans/{conditionalAccessPolicyPlanId}/rules/{conditionalAccessPolicyRuleId}
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
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|The conditions specific to the rule. During evaluation, these conditions are combined with the parent plan's **sharedConditions** property to determine the rule's effective targeting.|
|controls|[conditionalAccessPolicyRuleControls](../resources/conditionalaccesspolicyrulecontrols.md)|The grant and session controls enforced when the rule's effective conditions are met.|
|description|String|A free-text description of the rule's purpose.|
|displayName|String|The administrator-defined display name for the rule.|
|state|[conditionalAccessPolicyState](../resources/enums.md#conditionalaccesspolicystate-values)|The state of the rule. The possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_conditionalaccesspolicyrule"
}
-->
```http
PATCH https://graph.microsoft.com/beta/identity/conditionalAccess/plans/d1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a/rules/d1e2f3a4-b5c6-7d8e-9f0a-100000000001
Content-Type: application/json

{
  "description": "Requires compliant Windows devices and reports results before enforcement.",
  "state": "enabledForReportingButNotEnforced"
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
