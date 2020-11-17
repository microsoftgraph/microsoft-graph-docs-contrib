---
title: "Update tabs"
description: "Update the properties of a tabs object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update tabs
Namespace: microsoft.graph

Update the properties of a tabs object.

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
PATCH /chats/{chatsId}/tabs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsTab](../resources/teamstab.md) object.

The following table shows the properties that are required when you create the [teamsTab](../resources/teamstab.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|displayName|String|**TODO: Add Description**|
|teamsAppId|String|**TODO: Add Description**|
|sortOrderIndex|String|**TODO: Add Description**|
|messageId|String|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description**|
|configuration|[teamsTabConfiguration](../resources/teamstabconfiguration.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsTab](../resources/teamstab.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_tabs"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/chats/{chatsId}/tabs
Content-Type: application/json
Content-length: 273

{
  "@odata.type": "#microsoft.graph.teamsTab",
  "displayName": "String",
  "teamsAppId": "String",
  "sortOrderIndex": "String",
  "messageId": "String",
  "webUrl": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.teamsTabConfiguration"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.teamsTab",
  "id": "2d022622-2622-2d02-2226-022d2226022d",
  "displayName": "String",
  "teamsAppId": "String",
  "sortOrderIndex": "String",
  "messageId": "String",
  "webUrl": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.teamsTabConfiguration"
  }
}
```

