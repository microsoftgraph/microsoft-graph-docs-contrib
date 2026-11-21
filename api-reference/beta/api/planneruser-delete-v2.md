---
title: "Delete plan"
description: "Delete a plan object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Delete plan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a plan object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planneruser_delete_v2_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planneruser-delete-v2-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /planner/plans_v2/{planId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|If-Match|The complete ETag of the resource to update or delete. Required.|

Use the complete ETag returned by the latest read of this resource as the `If-Match` value. Don't construct or compare ETags yourself. A missing, invalid, or no-longer-usable ETag results in `412 Precondition Failed`. A conflicting change can result in `409 Conflict`; read the resource again and reconcile the changes before retrying. An older ETag doesn't necessarily fail when the service can merge nonconflicting changes.

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_plan"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/planner/plans_v2/{planId}
If-Match: {etag}
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

