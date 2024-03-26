---
title: "presence: setUserPreferredPresence"
description: "Set the preferred availability and activity status for a user."
author: "benjaminlee"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
---

# presence: setUserPreferredPresence

Namespace: microsoft.graph

Set the preferred availability and activity status for a user. If the preferred presence of a user is set, the user's presence shows as the preferred status.

Preferred presence takes effect only when at least one [presence session](presence-setpresence.md#presence-sessions) exists for the user. Otherwise, the user's presence shows as `Offline`.

A presence session is created as a result of a successful [setPresence](presence-setpresence.md) operation, or if the user is signed in on a Microsoft Teams client.

For more details, see [presence sessions](presence-setpresence.md#presence-sessions) and [time-out and expiration](presence-setpresence.md#timeout-expiration-and-keep-alive).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "presence_setuserpreferredpresence" } -->
[!INCLUDE [permissions-table](../includes/permissions/presence-setuserpreferredpresence-permissions.md)]

## HTTP request
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
| activity           | String   | The supplemental information to availability.                                                                                                                                                                                                  |
| availability       | String   | The base presence information.                                                                                                                                                                                                                 |
| expirationDuration | Duration | The expiration of the app presence session represented in ISO 8601 format for durations.<br/>If not provided, a default expiration will be applied:<br/>- `DoNotDisturb` or `Busy`: Expiration in 1 day<br/>- All others: Expiration in 7 days |

The following table lists supported combinations of **availability** and **activity**.

| availability | activity     | Description                                         |
| :----------- | :----------- | :-------------------------------------------------- |
| Available    | Available    | Set the user preferred presence as `Available`.     |
| Busy         | Busy         | Set the user preferred presence as `Busy`.          |
| DoNotDisturb | DoNotDisturb | Set the user preferred presence as `DoNotDisturb`.  |
| BeRightBack  | BeRightBack  | Set the user preferred presence as `BeRightBack`.   |
| Away         | Away         | Set the user preferred presence as `Away`.          |
| Offline      | OffWork      | Set the user preferred presence as `Offline`.       |

## Response
If successful, this method returns a `200 OK` response code.

## Examples

### Request

The following example shows a request that sets the preferred presence as `DoNotDisturb` for a user, with an expiration of 8 hours.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "setUserPreferredPresence",
  "sampleKeys": ["fa8bf3dc-eca7-46b7-bad1-db199b62afc3"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setUserPreferredPresence
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

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```
