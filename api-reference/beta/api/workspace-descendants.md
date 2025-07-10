---
title: "workspace: descendants"
description: "Get all the descendants of a specific type under a workspace."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# workspace: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the descendants of a specific type under a [workspace](../resources/workspace.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "workspace-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/workspace-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}/descendants/{placeType}
```

`{placeType}` can be any supported place type such as `microsoft.graph.workspace`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an empty collection as workspaces/ desk-pools do not have descendants.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "workspacethis.descendants"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/a74edd7c-60a4-4066-8f9d-ee6487e04093/descendants/microsoft.graph.workspace
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.place)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": []
}
```

