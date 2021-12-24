---
title: "List associatedTeamInfo"
description: "Get the teams in Microsoft Teams that a user is associated with."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List associatedTeamInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [associatedTeamInfo](../resources/associatedteaminfo.md) in Microsoft Teams that a [user](../resources/user.md) is associated with.
Currently, a [user](../resources/user.md) can be associated with a [team](../resources/team.md) in two different ways:
* A [user](../resources/user.md) can be a direct member of a [team](../resources/team.md).
* A [user](../resources/user.md) can be a member of a [shared channel](../resources/channel.md) that is hosted inside a [team](../resources/team.md).

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
GET /users/{usersId}/teamwork/associatedTeams
```
> **Note**: This API also returns the host team of the shared channel that the user is a direct member of.

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

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_associatedteaminfo"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/teamwork/associatedTeams
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.associatedTeamInfo",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.Teams.GraphSvc.associatedTeamInfo",
      "id": "b695c5a5-c5a5-b695-a5c5-95b6a5c595b6",
      "tenantId": "172b0cce-e65d-7hd4-9a49-91d9f2e8493a",
      "displayName": "Contoso Team"
    }
  ]
}
```

- [List joinedTeams](../api/user-list-joinedteams.md)
- [List all teams in an organization](../api/teams-list.md)
- [Get team](../api/team-get.md)

