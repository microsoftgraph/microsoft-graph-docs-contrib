---
title: "Update channel"
description: "Update the properties of a channel object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update channel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [channel](../resources/channel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
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
PATCH /teams/{teamsId}/primaryChannel
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [channel](../resources/channel.md) object.

The following table shows the properties that are required when you update the [channel](../resources/channel.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|email|String|**TODO: Add Description**|
|filesFolderWebUrl|String|**TODO: Add Description**|
|isFavoriteByDefault|Boolean|**TODO: Add Description**|
|membershipType|channelMembershipType|**TODO: Add Description**. The possible values are: `standard`, `private`, `unknownFutureValue`, `shared`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `shared`.|
|moderationSettings|[channelModerationSettings](../resources/channelmoderationsettings.md)|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [channel](../resources/channel.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_channel"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teams/{teamsId}/primaryChannel
Content-Type: application/json
Content-length: 374

{
  "@odata.type": "#microsoft.graph.channel",
  "description": "String",
  "displayName": "String",
  "email": "String",
  "filesFolderWebUrl": "String",
  "isFavoriteByDefault": "Boolean",
  "membershipType": "String",
  "moderationSettings": {
    "@odata.type": "microsoft.graph.channelModerationSettings"
  },
  "tenantId": "String",
  "webUrl": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.channel",
  "id": "73803c28-3c28-7380-283c-8073283c8073",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "email": "String",
  "filesFolderWebUrl": "String",
  "isFavoriteByDefault": "Boolean",
  "membershipType": "String",
  "moderationSettings": {
    "@odata.type": "microsoft.graph.channelModerationSettings"
  },
  "tenantId": "String",
  "webUrl": "String"
}
```

