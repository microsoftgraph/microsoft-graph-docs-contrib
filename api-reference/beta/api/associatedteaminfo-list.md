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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [teams](../resources/associatedteaminfo.md) in Microsoft Teams that a [user](../resources/user.md) is associated with.
Currently, a [user](../resources/user.md) can be associated with a [team](../resources/team.md) in two different ways:
* A [user](../resources/user.md) can be a direct member of a [team](../resources/team.md).
* A [user](../resources/user.md) can be a member of a shared [channel](../resources/channel.md) that is hosted inside a [team](../resources/team.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

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
GET https://graph.microsoft.com/beta/me/teamwork/associatedTeams
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-associatedteaminfo-csharp-snippets.md)]
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

---

### Response

The following is an example of the response.

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


## See also

- [List joinedTeams](../api/user-list-joinedteams.md)
- [List all teams in an organization](../api/teams-list.md)
- [Get team](../api/team-get.md)

