---
title: "scheduleChangeRequest: declineForUser"
description: "Decline a scheduleChangeRequest object for a user."
author: "lemikeshifts"
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# scheduleChangeRequest: declineForUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Decline a [scheduleChangeRequest](../resources/schedulechangerequest.md) object for a user. This action only supports application permissions.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions for [offerShiftRequest](../resources/offershiftrequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_declineforuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-declineforuser-permissions.md)]

Permissions for [openShiftChangeRequest](../resources/openshiftchangerequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_declineforuser_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-declineforuser-2-permissions.md)]

Permissions for [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_declineforuser_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-declineforuser-3-permissions.md)]

Permissions for [timeOffRequest](../resources/timeoffrequest.md):

<!-- { "blockType": "permissions", "name": "schedulechangerequest_declineforuser_4" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedulechangerequest-declineforuser-4-permissions.md)]

## HTTP request

To decline an [offerShiftRequest](../resources/offershiftrequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/offerShiftRequests/{offerShiftRequestId}/declineForUser
```

To decline an [openShiftChangeRequest](../resources/openshiftchangerequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/openShiftChangeRequests/{openShiftChangeRequestId}/declineForUser
```

To decline a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamId}/schedule/swapShiftsChangeRequests/{swapShiftChangeRequestId}/declineForUser
```

To decline a [timeOffRequest](../resources/timeoffrequest.md) object for a user.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/timeOffRequests/{timeOffRequestId}/declineForUser
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
|message|String|Custom message sent on decline. Optional.|
|userId|String|ID of the user who declined the request. Required.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Decline an offer shift request for a user

The following example shows how to decline an [offerShiftRequest](../resources/offershiftrequest.md) for a user. The request can be declined by the sender or the assignee. For details, see the **assignedTo** property in [scheduleChangeRequest](../resources/schedulechangerequest.md).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "offershiftrequestthis.declineforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/offerShiftRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/declineForUser
Content-Type: application/json

{
  "message": "Declined.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/offershiftrequestthisdeclineforuser-javascript-snippets.md)]
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

### Example 2: Decline an open shift change request for a user

The following example shows how to decline an [openShiftChangeRequest](../resources/openshiftchangerequest.md) for a user. The request can be declined by the sender or a team owner (manager).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openshiftchangerequestthis.declineforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/openShiftChangeRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/declineForUser
Content-Type: application/json

{
  "message": "Declined.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/openshiftchangerequestthisdeclineforuser-javascript-snippets.md)]
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

### Example 3: Decline a swap shift change request for a user

The following example shows how to decline a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) for a user. The request can be declined by the sender or the assignee (see `assignedTo` property in [scheduleChangeRequest](../resources/schedulechangerequest.md)).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "swapShiftsChangeRequestthis.declineforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/swapShiftsChangeRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/declineForUser
Content-Type: application/json

{
  "message": "Declined.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/swapshiftschangerequestthisdeclineforuser-javascript-snippets.md)]
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

### Example 4: Decline a time off request for a user

The following example shows how to decline a [timeOffRequest](../resources/timeoffrequest.md) for a user. The **userId** must be a team owner (manager).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timeoffrequestthis.declineforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/timeOffRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/declineForUser
Content-Type: application/json

{
  "message": "Declined.",
  "userId": "d2e7b5b2-0355-4c73-a543-08847b5b0884"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timeoffrequestthisdeclineforuser-javascript-snippets.md)]
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
