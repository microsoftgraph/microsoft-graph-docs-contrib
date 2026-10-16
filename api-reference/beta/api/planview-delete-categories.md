---
title: "Delete categoryDefinition"
description: "Delete a categoryDefinition object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Delete categoryDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a categoryDefinition object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planview-delete-categories-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planview-delete-categories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /planView/categories/{categoryDefinitionId}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_categorydefinition"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/planView/categories/{categoryDefinitionId}/$ref
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

