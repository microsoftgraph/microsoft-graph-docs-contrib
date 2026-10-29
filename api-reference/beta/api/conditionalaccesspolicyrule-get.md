---
title: "Get conditionalAccessPolicyRule"
description: "Retrieve the properties and relationships of a conditionalAccessPolicyRule object."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get conditionalAccessPolicyRule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccesspolicyrule_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesspolicyrule-get-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-policy-plan-apis](../includes/rbac-for-apis/rbac-conditionalaccess-policy-plan-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identity/conditionalAccess/plans/{conditionalAccessPolicyPlanId}/rules/{conditionalAccessPolicyRuleId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_conditionalaccesspolicyrule"
}
-->
```http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/plans/d1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a/rules/d1e2f3a4-b5c6-7d8e-9f0a-100000000001
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicyRule"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicyRule",
  "id": "d1e2f3a4-b5c6-7d8e-9f0a-100000000001",
  "displayName": "Require compliant Windows devices",
  "description": "Requires Windows devices to be compliant.",
  "state": "enabled",
  "conditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
    "users": {
      "includeUsers": [
        "All"
      ]
    },
    "applications": {
      "includeApplications": [
        "All"
      ]
    }
  },
  "controls": {
    "@odata.type": "microsoft.graph.conditionalAccessPolicyRuleControls",
    "grantControls": {
      "operator": "OR",
      "builtInControls": [
        "compliantDevice"
      ]
    }
  }
}
```
