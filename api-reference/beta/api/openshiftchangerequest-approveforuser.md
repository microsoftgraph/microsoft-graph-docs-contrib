---
title: "openShiftChangeRequest: approveForUser"
description: "Approve an open shift request for a user."
author: lemikeshifts
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# openShiftChangeRequest: approveForUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Approve an [openshiftchangerequest](../resources/openshiftchangerequest.md) object for a user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "openshiftchangerequest-approveforuser-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/openshiftchangerequest-approveforuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/schedule/openShiftChangeRequests/{openShiftChangeRequestId}/approveForUser
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|message|String|Custom message sent on approval.|
|userId|String|ID of the user that approved the request.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "openshiftchangerequestthis.approveforuser"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/openShiftChangeRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/approveForUser
Content-Type: application/json

{
  "message": "Approved.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

