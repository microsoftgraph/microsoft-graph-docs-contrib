---
title: "Replace timeCard"
description: "Replace an existing timeCard entry."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# Replace timeCard

Namespace: microsoft.graph

Replace an existing [timeCard](../resources/timecard.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "timecard_replace" } -->
[!INCLUDE [permissions-table](../includes/permissions/timecard-replace-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /teams/{teamsId}/schedule/timeCards/{timeCardId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

In the request body, supply a JSON representation of a [timeCard](../resources/timecard.md).

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "replace_timecard"
}
-->
```http
PUT https://graph.microsoft.com/v1.0/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards/TCK_29ad0a09-b97a-49a2-9490-141cb7602540
Content-type: application/json

{
  "userId": "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
  "state": "clockedOut",
  "notes": {
    "contentType": "text",
    "content": "Modified clockOut time"
  },
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "user": {
      "id": "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
      "displayName": "Alice Bradford"
    }
  },
  "clockInEvent": {
    "dateTime": "2025-01-07T21:00:00Z",
    "isAtApprovedLocation": true,
    "notes": {
      "contentType": "text",
      "content": "Started late due to traffic in CA 237"
    }
  },
  "clockOutEvent": {
    "dateTime": "2025-01-07T21:35:00Z",
    "isAtApprovedLocation": true,
    "notes": null
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/replace-timecard-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

