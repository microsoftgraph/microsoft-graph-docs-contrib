---
title: "contentType: publish"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# contentType: publish
Namespace: microsoft.graph

**TODO: Add Description**

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
POST /drive/list/contentTypes/{contentTypeId}/publish
POST /sites/{sitesId}/contentTypes/{contentTypeId}/publish
POST /drive/list/contentTypes/{contentTypeId}/base/publish
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/publish
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/base/publish
POST /drive/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/publish
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/publish
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [contentType](../resources/contenttype.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_publish"
}
-->
``` http
POST https://graph.microsoft.com/beta/drive/list/contentTypes/{contentTypeId}/publish
```


### Response
**Note:** The response object shown here might be shortened for readability.
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
    "id": "String (identifier)",
    "associatedHubUrls": [
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

