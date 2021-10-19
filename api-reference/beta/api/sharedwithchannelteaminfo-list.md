---
title: "List sharedWithChannelTeamInfoes"
description: "Retrieve the list of teams shared with this channel."
author: "devjha-ms"
doc_type: "apiPageType"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# List sharedWithChannelTeamInfoes
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) objects shared with this [channel](../resources/channel.md). This operation is allowed only for channels with a **membershipType** value of `shared`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ChannelMember.Read.All, ChannelMember.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|ChannelMember.Read.All, ChannelMember.ReadWrite.All |

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/channels/{channelId}/sharedWithTeams
```

## Optional query parameters
This method supports the `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_sharedwithchannelteaminfo"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2/sharedWithTeams
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.sharedWithChannelTeamInfo)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.Teams.GraphSvc.sharedWithChannelTeamInfo",
      "id": "2173de69-de69-2173-69de-732169de7321",
      "tenantId": "b3246f44-b4gb-4627-96c6-25b18fa2c910",
      "displayName": "Team Contosso",
      "isHostTeam": "true"
    },
    {
      "id": "893075dd-2487-4122-86db-022c42e20265",
      "displayName": "Team fabricam",
      "isHostTeam": "false",
      "tenantId": "b3246f44-b4gb-5678-96c6-25b18fa2c910"
    }
  ]
}
```

