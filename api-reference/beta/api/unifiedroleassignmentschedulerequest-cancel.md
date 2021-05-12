---
title: "unifiedRoleAssignmentScheduleRequest: cancel"
description: "Cancel a unifiedRoleAssignmentScheduleRequest."
author: "shauliu"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# unifiedRoleAssignmentScheduleRequest: cancel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Immediately cancel a [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) and have the system automatically delete the cancelled request after 30 days.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureAD|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roleManagement/directory/roleAssignmentScheduleRequests/{unifiedRoleAssignmentScheduleRequestsId}/cancel
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
<!-- {
  "blockType": "request",
  "name": "unifiedroleassignmentschedulerequest_cancel"
}
-->
``` http
POST https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleRequests/{unifiedRoleAssignmentScheduleRequestsId}/cancel
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

