---
title: "Update contentType"
description: "Update the properties of a contentType object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update contentType
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [contentType](../resources/contenttype.md) object.

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
PATCH /drive/list/contentTypes/{contentTypeId}
PATCH /sites/{sitesId}/contentTypes/{contentTypeId}
PATCH /drive/list/contentTypes/{contentTypeId}/base
PATCH /drives/{drivesId}/list/contentTypes/{contentTypeId}
PATCH /drives/{drivesId}/list/contentTypes/{contentTypeId}/base
PATCH /drive/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}
PATCH /drives/{drivesId}/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|associatedHubsUrls|String collection|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|documentSet|[documentSet](../resources/documentset.md)|**TODO: Add Description** Optional.|
|documentTemplate|[documentSetContent](../resources/documentsetcontent.md)|**TODO: Add Description** Optional.|
|group|String|**TODO: Add Description** Optional.|
|hidden|Boolean|**TODO: Add Description** Optional.|
|inheritedFrom|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Optional.|
|isBuiltIn|Boolean|**TODO: Add Description** Optional.|
|name|String|**TODO: Add Description** Optional.|
|order|[contentTypeOrder](../resources/contenttypeorder.md)|**TODO: Add Description** Optional.|
|parentId|String|**TODO: Add Description** Optional.|
|propagateChanges|Boolean|**TODO: Add Description** Optional.|
|readOnly|Boolean|**TODO: Add Description** Optional.|
|sealed|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [contentType](../resources/contenttype.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_contenttype"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/drive/list/contentTypes/{contentTypeId}
Content-Type: application/json
Content-length: 650

{
  "@odata.type": "#microsoft.graph.contentType",
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
```

