---
title: "scheduleChangeRequest: approveForUser"
description: "Approve a scheduleChangeRequest object for a user."
author: "lemikeshifts"
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# scheduleChangeRequest: approveForUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Approve a [scheduleChangeRequest](../resources/schedulechangerequest.md) object for a user. This action only supports application permissions.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions for [offerShiftRequest](../resources/offershiftrequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_approveforuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-approveforuser-permissions.md)]

Permissions for [openShiftChangeRequest](../resources/openshiftchangerequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_approveforuser_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-approveforuser-2-permissions.md)]

Permissions for [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_approveforuser_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-approveforuser-3-permissions.md)]

Permissions for [timeOffRequest](../resources/timeoffrequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_approveforuser_4" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-approveforuser-4-permissions.md)]

## HTTP request

To approve an [offerShiftRequest](../resources/offershiftrequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/offerShiftRequests/{offerShiftRequestId}/approveForUser
```

To approve an [openShiftChangeRequest](../resources/openshiftchangerequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/openShiftChangeRequests/{openShiftChangeRequestId}/approveForUser
```

To approve a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamId}/schedule/swapShiftsChangeRequests/{swapShiftChangeRequestId}/approveForUser
```

To approve a [timeOffRequest](../resources/timeoffrequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/timeOffRequests/{timeOffRequestId}/approveForUser
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|message|String|Custom message sent on approval. Optional.|
|userId|String|ID of the user who approved the request. Required.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Approve an offer shift request for a user

The following example shows how to approve an [offerShiftRequest](../resources/offershiftrequest.md) for a user. Only the assignee can approve the request. For details, see the **assignedTo** property in [scheduleChangeRequest](../resources/schedulechangerequest.md).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "offershiftrequestthis.approveforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/offerShiftRequests/SREQ_bb7af804-9ca1-48d7-9a0c-aa5a9f447d3c/approveForUser
Content-Type: application/json

{
  "message": "Approved!",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/offershiftrequestthisapproveforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Approve an open shift change request for a user

The following example shows how to approve an [openShiftChangeRequest](../resources/openshiftchangerequest.md) for a user. The **userId** must be a team owner.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openshiftchangerequestthis.approveforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/openShiftChangeRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/approveForUser
Content-Type: application/json

{
  "message": "Approved.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/openshiftchangerequestthisapproveforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 3: Approve a swap shift change request for a user

The following example shows how to approve a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) for a user. Only the assignee can approve the request. For details, see the **assignedTo** property in [scheduleChangeRequest](../resources/schedulechangerequest.md).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "swapShiftsChangeRequestthis.approveforuser"
}
-->
```http
POST /teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/swapShiftsChangeRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/approveForUser
Content-Type: application/json

{
  "message": "Approved.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/swapshiftschangerequestthisapproveforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 4: Approve a time off request for a user

The following example shows how to approve a [timeOffRequest](../resources/timeoffrequest.md) for a user. The **userId** must be a team owner (manager).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timeoffrequestthis.approveforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/timeOffRequests/SREQ_bb7af804-9ca1-48d7-9a0c-aa5a9f447d3c/approveForUser
Content-Type: application/json

{
  "message": "Approved!",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timeoffrequestthisapproveforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
