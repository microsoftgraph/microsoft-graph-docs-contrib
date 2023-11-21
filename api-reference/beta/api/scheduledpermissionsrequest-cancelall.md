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

Cancel a scheduled permission request. Either the requestor or an administrator can cancel a request.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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

