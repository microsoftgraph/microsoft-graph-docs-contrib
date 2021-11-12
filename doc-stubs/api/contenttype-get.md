---
title: "Get contentType"
description: "Read the properties and relationships of a contentType object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get contentType
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [contentType](../resources/contenttype.md) object.

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
GET /drive/list/contentTypes/{contentTypeId}
GET /sites/{sitesId}/contentTypes/{contentTypeId}
GET /drive/list/contentTypes/{contentTypeId}/base
GET /drives/{drivesId}/list/contentTypes/{contentTypeId}
GET /drives/{drivesId}/list/contentTypes/{contentTypeId}/base
GET /drive/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}
GET /drives/{drivesId}/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}
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

If successful, this method returns a `200 OK` response code and a [contentType](../resources/contenttype.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_contenttype"
}
-->
``` http
GET https://graph.microsoft.com/beta/drive/list/contentTypes/{contentTypeId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentType"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.contentType",
    "id": "13622ed9-2ed9-1362-d92e-6213d92e6213",
    "associatedHubsUrls": [
      "String"
    ],
    "description": "String",
    "documentSet": {
      "@odata.type": "microsoft.graph.documentSet"
    },
    "documentTemplate": {
      "@odata.type": "microsoft.graph.documentSetContent"
    },
    "group": "String",
    "hidden": "Boolean",
    "inheritedFrom": {
      "@odata.type": "microsoft.graph.itemReference"
    },
    "isBuiltIn": "Boolean",
    "name": "String",
    "order": {
      "@odata.type": "microsoft.graph.contentTypeOrder"
    },
    "parentId": "String",
    "propagateChanges": "Boolean",
    "readOnly": "Boolean",
    "sealed": "Boolean"
  }
}
```

