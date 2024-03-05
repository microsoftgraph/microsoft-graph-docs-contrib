---
title: "List associatedTeamInfo"
description: "Get the list of teams in Microsoft Teams that a user is associated with."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List associatedTeamInfo
Namespace: microsoft.graph

Get the list of [teams](../resources/associatedteaminfo.md) in Microsoft Teams that a [user](../resources/user.md) is associated with.
Currently, a [user](../resources/user.md) can be associated with a [team](../resources/team.md) in two different ways:

* A [user](../resources/user.md) can be a direct member of a [team](../resources/team.md).
* A [user](../resources/user.md) can be a member of a shared [channel](../resources/channel.md) that is hosted inside a [team](../resources/team.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "associatedteaminfo_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/associatedteaminfo-list-permissions.md)]

> **Note:** Currently, with user delegated permissions, this operation only works for the `me` user. With application permissions, it works for all users by specifying the specific user ID (`me` alias is not supported with application permissions).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{user-id}/teamwork/associatedTeams
```

## Optional query parameters
This method does not currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [associatedTeamInfo](../resources/associatedteaminfo.md) objects in the response body.

> **Note**: This API also returns the host team of the shared channel that the user is a direct member of.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_associatedteaminfo"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/teamwork/associatedTeams
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-associatedteaminfo-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-associatedteaminfo-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-associatedteaminfo-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-associatedteaminfo-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-associatedteaminfo-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-associatedteaminfo-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-associatedteaminfo-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-associatedteaminfo-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.associatedTeamInfo",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.associatedTeamInfo",
      "id": "b695c5a5-c5a5-b695-a5c5-95b6a5c595b6",
      "tenantId": "172b0cce-e65d-7hd4-9a49-91d9f2e8493a",
      "displayName": "Contoso Team"
    },
    {
      "@odata.type": "#microsoft.graph.associatedTeamInfo",
      "id": "b695c5a5-8934-b695-a5c5-95b6a5c595b6",
      "tenantId": "172b0cce-8961-7hd4-9a49-91d9f2e8493a",
      "displayName": "Fabrikam Team"
    }
  ]
}
```


## Related content

- [List joinedTeams](../api/user-list-joinedteams.md)
- [Get team](../api/team-get.md)
- [List teams](../api/teams-list.md)

