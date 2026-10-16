---
title: "Update planner"
description: "Update the properties of a planner object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update planner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a planner object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planner-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planner-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /planner
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

No properties are currently supported for update.


## Response

If successful, this method returns a `200 OK` response code and an updated [planner](../resources/planner.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_planner"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/planner
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.planner"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.planner"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.planner"
}
```

