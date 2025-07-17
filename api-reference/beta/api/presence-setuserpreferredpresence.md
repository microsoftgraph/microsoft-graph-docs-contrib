---
title: "presence: setUserPreferredPresence"
description: "Set the user preferred presence for a user"
author: "awang119"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
ms.date: 04/05/2024
---

# presence: setUserPreferredPresence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the preferred availability and activity status for a user. If the preferred presence of a user is set, the user's presence is the preferred presence.

Preferred presence takes effect only when there is at least one [presence session](presence-setpresence.md#presence-sessions) of the user. Otherwise, the user's presence stays as Offline.

A presence session can be created as a result of a successful [setPresence](presence-setpresence.md) operation, or if the user is signed in on a Teams client. 

Read more about [presence sessions](presence-setpresence.md#presence-sessions) and their [time-out and expiration](presence-setpresence.md#timeout-expiration-and-keep-alive). 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "presence_setuserpreferredpresence" } -->
[!INCLUDE [permissions-table](../includes/permissions/presence-setuserpreferredpresence-permissions.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/setUserPreferredPresence
```
## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter          | Type     | Description                                                                                                                                                                                                                                    |
| :----------------- | :------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| availability       | string   | The base presence information.                                                                                                                                                                                                                 |
| activity           | string   | The supplemental information to availability.                                                                                                                                                                                                  |
| expirationDuration | duration | The expiration of the app presence session. The value is represented in ISO 8601 format for durations.<br/>If not provided, a default expiration will be applied:<br/>DoNotDisturb or Busy: expires in 1 day<br/>All others: expires in 7 days |

Supported combinations of **availability** and **activity** are:

| availability | activity     | Description                                         |
| :----------- | :----------- | :-------------------------------------------------- |
| Available    | Available    | Set the user preferred presence as Available.       |
| Busy         | Busy         | Set the user preferred presence as Busy.            |
| DoNotDisturb | DoNotDisturb | Set the user preferred presence as DoNotDisturb.    |
| BeRightBack  | BeRightBack  | Set the user preferred presence as BeRightBack.     |
| Away         | Away         | Set the user preferred presence as Away.            |
| Offline      | OffWork      | Set the user preferred presence as Offline. |

## Response
If successful, this method returns a `200 OK` response code.

## Examples

The following request sets the user preferred presence as DoNotDisturb for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`, with the expiration of 8 hours.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "setUserPreferredPresence"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setUserPreferredPresence
Content-Type: application/json

{
  "availability": "DoNotDisturb",
  "activity": "DoNotDisturb",
  "expirationDuration": "PT8H"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/setuserpreferredpresence-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/setuserpreferredpresence-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/setuserpreferredpresence-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/setuserpreferredpresence-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/setuserpreferredpresence-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/setuserpreferredpresence-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/setuserpreferredpresence-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/setuserpreferredpresence-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```
