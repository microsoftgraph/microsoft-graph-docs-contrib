---
title: "presence: setPresence"
description: "Set the presence information for a user's application presence session."
author: "jsandoval-msft"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
ms.date: 04/04/2024
---

# presence: setPresence

Namespace: microsoft.graph

Set the state of a user's presence session as an application.

For more information about presence sessions, states permutations, and timeouts, see [Manage presence state using the Microsoft Graph API](/graph/cloud-communications-manage-presence-state).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "presence_setpresence" } -->
[!INCLUDE [permissions-table](../includes/permissions/presence-setpresence-permissions.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id}/presence/setPresence
```
## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter          | Type     | Description                                                                                            |
| :----------------- | :------- | :----------------------------------------------------------------------------------------------------- |
| sessionId          | string   | The ID of the application's presence session.                                                          |
| availability       | string   | The base presence information.                                                                         |
| activity           | string   | The supplemental information to availability.                                                          |
| expirationDuration | duration | The expiration of the app presence session. The value is represented in [ISO 8601 format for durations](http://en.wikipedia.org/wiki/ISO_8601#Durations).</p>If not provided, a default expiration of 5 minutes is applied. The valid duration range is from 5 to 240 minutes (PT5M to PT4H).|

> [!IMPORTANT]
>
> Provide the ID of the application as `sessionId` in the request.

Supported combinations of `availability` and `activity` are:

| availability | activity          | Description                                               |
| :----------- | :---------------- | :-------------------------------------------------------- |
| Available    | Available         | Updates the presence session as Available.                |
| Busy         | InACall           | Updates the presence session as Busy, InACall.            |
| Busy         | InAConferenceCall | Updates the presence session as Busy, InAConferenceCall.  |
| Away         | Away              | Updates the presence session as Away.                     |
| DoNotDisturb | Presenting        | Updates the presence session as DoNotDisturb, Presenting. |

## Response
If successful, this method returns a `200 OK` response code.

## Examples
The following request shows the application with ID `22553876-f5ab-4529-bffb-cfe50aa89f87` that sets its presence session for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`.

### Request



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "set-presence"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setPresence
Content-Type: application/json

{
  "sessionId": "22553876-f5ab-4529-bffb-cfe50aa89f87",
  "availability": "Available",
  "activity": "Available",
  "expirationDuration": "PT1H"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/set-presence-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/set-presence-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/set-presence-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/set-presence-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/set-presence-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/set-presence-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/set-presence-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```
