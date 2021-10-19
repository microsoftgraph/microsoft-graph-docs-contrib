---
title: "List allChannels"
description: "Retrieve the list of channels either in this team or shared with this team (incoming channels)."
author: "devjha-ms"
doc_type: "apiPageType"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# List allChannels
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [channels](../resources/channel.md) either in this [team](../resources/team.md) or shared with this [team](../resources/team.md) ( incoming channels). Response will include `@odata.id` property which can be used to access the channel and do other operation on [Channel](../resources/channel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All |


> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/allChannels
```

## Optional query parameters
This method supports the `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

### Use $select for better performance
Populating the **email** and **moderationSettings** properties for a channel is an expensive operation that results in slow performance. Use `$select` to exclude the **email** and **moderationSettings** properties to improve performance.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [channel](../resources/channel.md) objects in the response body. Response will include `@odata.id` property which can be used to access the channel and do other operation on [Channel](../resources/channel.md) object.

## Examples

### Example 1: List all channels

#### Request
<!-- {
  "blockType": "request",
  "name": "list_all_channel"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/allChannels
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.channel)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
       "@odata.id": "https://graph.microsoft.com/beta/tenants/b3246f44-b4gb-4627-96c6-25b18fa2c910/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2",
      "id": "19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2",
      "createdDateTime": "2020-05-27T19:22:25.692Z",
      "displayName": "General",
      "description": "AutoTestTeam_20210311_150740.2550_fim3udfdjen9",
      "membershipType": "standard",
      "tenantId": "b3246f44-b4gb-4627-96c6-25b18fa2c910"
    },
    {
       "@odata.id": "https://graph.microsoft.com/beta/tenants/b3246f44-b4gb-5678-96c6-25b18fa2c910/teams/893075dd-5678-5634-925f-022c42e20265/channels/19:561fbdbbfca848a484gabdf00ce9dbbd@thread.tacv",
      "id": "19:561fbdbbfca848a484gabdf00ce9dbbd@thread.tacv2",
      "createdDateTime": "2020-05-27T19:22:25.692Z",
      "displayName": "Shared channel from Contosso",
      "membershipType": "standard",
      "tenantId": "b3246f44-b4gb-5678-96c6-25b18fa2c910"
    }
  ]
}
```


### Example 2: List all shared channels

#### Request
<!-- {
  "blockType": "request",
  "name": "list_all_shared_channel"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/allChannels?$filter=membershipType eq 'shared'
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.channel)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
       "@odata.id": "https://graph.microsoft.com/beta/tenants/b3246f44-b4gb-5678-96c6-25b18fa2c910/teams/893075dd-5678-5634-925f-022c42e20265/channels/19:561fbdbbfca848a484gabdf00ce9dbbd@thread.tacv",
      "id": "19:561fbdbbfca848a484gabdf00ce9dbbd@thread.tacv2",
      "createdDateTime": "2020-05-27T19:22:25.692Z",
      "displayName": "Shared channel from Contosso",
      "membershipType": "standard",
      "tenantId": "b3246f44-b4gb-5678-96c6-25b18fa2c910"
    }
  ]
}
```

