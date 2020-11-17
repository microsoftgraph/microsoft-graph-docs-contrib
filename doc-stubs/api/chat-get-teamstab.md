---
title: "Get tabs"
description: "Read the properties and relationships of a teamsTab object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get tabs
Namespace: microsoft.graph

Read the properties and relationships of a [teamsTab](../resources/teamstab.md) object.

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
GET /chats/{chatsId}/tabs
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamsTab](../resources/teamstab.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamstab"
}
-->
``` http
GET https://graph.microsoft.com/beta/chats/{chatsId}/tabs
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsTab"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
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
}
```

