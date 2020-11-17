---
title: "Create channel"
description: "Create a new channel object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create channel
Namespace: microsoft.graph

Create a new [channel](../resources/channel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/channels
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [channel](../resources/channel.md) object.

The following table shows the properties that are required when you create the [channel](../resources/channel.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|isFavoriteByDefault|Boolean|**TODO: Add Description**|
|email|String|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description**|
|membershipType|channelMembershipType|**TODO: Add Description**. Possible values are: `standard`, `private`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [channel](../resources/channel.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_channel_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/channels
Content-Type: application/json
Content-length: 227

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.channel",
  "displayName": "String",
  "description": "String",
  "isFavoriteByDefault": "Boolean",
  "email": "String",
  "webUrl": "String",
  "membershipType": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.channel"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.channel",
  "id": "cf8a8927-8927-cf8a-2789-8acf27898acf",
  "displayName": "String",
  "description": "String",
  "isFavoriteByDefault": "Boolean",
  "email": "String",
  "webUrl": "String",
  "membershipType": "String"
}
```

