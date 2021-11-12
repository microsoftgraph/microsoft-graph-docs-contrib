---
title: "contentType: getCompatibleHubContentTypes"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# contentType: getCompatibleHubContentTypes
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
GET /drive/list/contentTypes/getCompatibleHubContentTypes
GET /sites/{sitesId}/contentTypes/getCompatibleHubContentTypes
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [contentType](../resources/contenttype.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_getcompatiblehubcontenttypes"
}
-->
``` http
GET https://graph.microsoft.com/beta/drive/list/contentTypes/getCompatibleHubContentTypes
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.contentType)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.contentType",
      "id": "String (identifier)",
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
  ]
}
```

