---
title: "List Conditional Access policy plans"
description: "Retrieve a list of Conditional Access policy plans and their properties."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List Conditional Access policy plans

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccessroot_list_plans" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-list-plans-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-policy-plan-apis](../includes/rbac-for-apis/rbac-conditionalaccess-policy-plan-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identity/conditionalAccess/plans
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top` [OData query parameters](/graph/query-parameters) to customize the response. Use `$filter` with the `eq` operator on the **displayName** property. Use `$orderby` with the **displayName**, **createdDateTime**, or **modifiedDateTime** property.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_conditionalaccesspolicyplan"
}
-->
```http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/plans
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicyPlan"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.conditionalAccessPolicyPlan",
      "id": "d1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a",
      "displayName": "Device compliance plan",
      "description": "Requires compliant devices for all users.",
      "owners": [
        "a1b2c3d4-0004-0000-0000-000000000000"
      ],
      "tags": [
        "device-compliance"
      ],
      "version": 1,
      "templateId": null,
      "createdDateTime": "2026-04-10T15:30:00Z",
      "modifiedDateTime": "2026-04-10T15:30:00Z",
      "sharedConditions": {
        "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
        "platforms": {
          "includePlatforms": [
            "windows"
          ]
        }
      },
      "rules@odata.count": 1
    }
  ]
}
```
