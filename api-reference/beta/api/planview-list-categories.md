---
title: "List categories"
description: "Read a plan with its category definitions expanded."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List categories

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read a [plan](../resources/plan.md) with its [category definitions](../resources/categorydefinition.md) expanded through **planView**. Categories belong to a plan; `/planView/categories` isn't a standalone root collection. To locate one category, find its ID in the returned **planView.categories** array.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planview_list_categories_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planview-list-categories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/plans_v2/{planId}?$expand=planView($expand=categories)
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [plan](../resources/plan.md) object with **planView.categories** expanded in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_categorydefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/plans_v2/b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31?$expand=planView($expand=categories)
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plan"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "id": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "displayName": "Product launch",
  "planView": {
    "categories": [
      {
        "id": "6b52004e-a959-a35e-0bc4-3421d8033b1d",
        "displayName": "Launch readiness"
      }
    ]
  }
}
```
