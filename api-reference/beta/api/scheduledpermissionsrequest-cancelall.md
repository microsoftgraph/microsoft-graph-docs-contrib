---
title: "scheduledPermissionsRequest: cancelAll"
description: "Cancel a scheduled permission request."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# scheduledPermissionsRequest: cancelAll
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel a permission request. Either the requestor or an administrator can cancel an approved request, while only the requestor can cancel a pending (**statusDetail** of `submitted`) request.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "scheduledpermissionsrequest_cancelall" } -->
[!INCLUDE [permissions-table](../includes/permissions/scheduledpermissionsrequest-cancelall-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}/cancelAll
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "scheduledpermissionsrequestthis.cancelall"
}
-->
``` http
POST https://graph.microsoft.com/beta/permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}/cancelAll
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

