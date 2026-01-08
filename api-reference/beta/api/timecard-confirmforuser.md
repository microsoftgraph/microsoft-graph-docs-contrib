---
title: "timeCard: confirmForUser"
description: "Confirm a specific timeCard for a user."
author: lemikeshifts
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# timeCard: confirmForUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Confirm a specific [timeCard](../resources/timecard.md) for a user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "timecard_confirmforuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/timecard-confirmforuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /teams/{teamsId}/schedule/timeCards/{timeCardId}/confirmForUser
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
|userId|String|The ID of the user who confirms the **timeCard**.|

## Response

If successful, this action returns a `200 OK` response code and a [timeCard](../resources/timecard.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timecardthis.confirmforuser"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/TCK_95c44dff-bc12-4de2-8a9a-9772e4421eb4/confirmForUser
Content-Type: application/json

{
  "userId": "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/timecardthisconfirmforuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/timecardthisconfirmforuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/timecardthisconfirmforuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timecardthisconfirmforuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/timecardthisconfirmforuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/timecardthisconfirmforuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/timecardthisconfirmforuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeCard"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "TCK_95c44dff-bc12-4de2-8a9a-9772e4421eb4",
  "createdDateTime": "2025-01-08T15:44:09.545Z",
  "lastModifiedDateTime": "2025-01-08T19:45:25.048Z",
  "userId": "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
  "state": "clockedOut",
  "confirmedBy": "user",
  "notes": null,
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "user": {
      "id": "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
      "displayName": "Alice Bradford"
    }
  },
  "clockInEvent": {
    "dateTime": "2025-01-08T15:44:09.545Z",
    "isAtApprovedLocation": null,
    "notes": null
  },
  "clockOutEvent": {
    "dateTime": "2025-01-07T19:45:25.048Z",
    "isAtApprovedLocation": null,
    "notes": null
  },
  "breaks": [],
  "originalEntry": {
    "clockInEvent": {
      "dateTime": "2025-01-07T15:44:09.545Z",
      "isAtApprovedLocation": null,
      "notes": null
    },
    "clockOutEvent": {
      "dateTime": "2025-01-07T19:45:25.048Z",
      "isAtApprovedLocation": null,
      "notes": null
    },
    "breaks": []
  },
  "createdBy": {
    "application": null,
    "device": null,
    "user": {
      "id": "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
      "displayName": "Alice Bradford"
    }
  }
}
```
