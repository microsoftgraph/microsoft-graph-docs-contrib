---
title: "List allowedMembers"
description: "Get the conversationMember resources from the allowedMembers navigation property."
author: "devjha-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List allowedMembers of sharedWithChannelTeamInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [conversationMembers](../resources/conversationmember.md) from the [team](../resources/team.md) who can access the [channel](../resources/channel.md).
This does not include below [conversationMembers](../resources/conversationmember.md) from [team](../resources/team.md):
- Where roles is `Guest`
- Who is an externally authenticated user in the tenant.

> [!NOTE]
> The membership ID returned by server must be treated as opaque strings. The client should not try to parse or make any assumptions about these resource IDs.
>
> The membership results could map to users from different tenants, as indicated in the response, in the future. The client should not assume that all members are from the current tenant only.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | ChannelMember.Read.All, ChannelMember.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMember.Read.All, ChannelMember.ReadWrite.All |


> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/channels/{channelId}/sharedWithTeams/{sharedWithChannelTeamInfoId}/allowedMembers
```

## Optional query parameters
This operation supports `$select` and `$count` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [conversationMember](../resources/conversationmember.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_conversationmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/{teamsId}/channels/{channelId}/sharedWithTeams/{sharedWithChannelTeamInfoId}/allowedMembers
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.conversationMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.Teams.GraphSvc.conversationMember",
      "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkMTQ",
      "roles": [
        "owner"
      ],
      "displayName": "Jane Doe",
      "userId": "eef9cb36-06de-469b-87cd-70f4cbe32d14",
      "email": "jdoe@teamsip.onmicrosoft.com",
      "tenantId": "df81db53-c7e2-418a-8803-0e68d4b88607"
    }
  ]
}
```

## See also

- [List members of team](team-list-members.md)