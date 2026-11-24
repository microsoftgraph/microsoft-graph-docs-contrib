---
title: "List plans_v2"
description: "Get a list of the plan objects and their properties."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List plans_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [plan](../resources/plan.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "planner_list_plans_v2" } -->
[!INCLUDE [permissions-table](../includes/permissions/planner-list-plans_v2-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/plans_v2?$filter=container/containerType eq '{container-type}' and container/containerId eq '{container-id}'
```

The `$filter` query parameter is required. Specify both `container/containerType` and `container/containerId`, combined with `and`, to identify the owning container. This endpoint isn't an unfiltered list of every plan.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plan](../resources/plan.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "planner_list_plans_v2"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/plans_v2?$filter=container/containerType eq 'group' and container/containerId eq '5d5a917d-aef4-4fdc-bc99-6048a39aa329'
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.plan",
      "id": "da037802-c736-af41-ff32-789862c95bd9",
      "displayName": "Product launch",
      "container": {
        "containerId": "5d5a917d-aef4-4fdc-bc99-6048a39aa329",
        "containerType": "group"
      }
    }
  ]
}
```

