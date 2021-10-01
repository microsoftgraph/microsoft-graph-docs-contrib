---
title: "Update chat"
description: "Update the properties of a chat object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update chat
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [chat](../resources/chat.md) object.

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
PATCH /chats/{chatsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [chat](../resources/chat.md) object.

The following table shows the properties that are required when you update the [chat](../resources/chat.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|chatType|chatType|**TODO: Add Description**. The possible values are: `oneOnOne`, `group`, `meeting`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|onlineMeetingInfo|[teamworkOnlineMeetingInfo](../resources/teamworkonlinemeetinginfo.md)|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|topic|String|**TODO: Add Description**|
|viewpoint|[chatViewpoint](../resources/chatviewpoint.md)|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [chat](../resources/chat.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_chat"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/chats/{chatsId}
Content-Type: application/json
Content-length: 361

{
  "@odata.type": "#microsoft.graph.chat",
  "chatType": "String",
  "lastUpdatedDateTime": "String (timestamp)",
  "onlineMeetingInfo": {
    "@odata.type": "microsoft.graph.teamworkOnlineMeetingInfo"
  },
  "tenantId": "String",
  "topic": "String",
  "viewpoint": {
    "@odata.type": "microsoft.graph.chatViewpoint"
  },
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
  "@odata.type": "#microsoft.graph.chat",
  "id": "0f7cca54-ca54-0f7c-54ca-7c0f54ca7c0f",
  "chatType": "String",
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "onlineMeetingInfo": {
    "@odata.type": "microsoft.graph.teamworkOnlineMeetingInfo"
  },
  "tenantId": "String",
  "topic": "String",
  "viewpoint": {
    "@odata.type": "microsoft.graph.chatViewpoint"
  },
  "webUrl": "String"
}
```

