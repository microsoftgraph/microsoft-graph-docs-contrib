---
title: "Update contentType"
description: "Update the properties of a contentType object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update contentType
Namespace: microsoft.graph

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
In the request body, supply a JSON representation of the [contentType](../resources/contenttype.md) object.

The following table shows the properties that are required when you update the [contentType](../resources/contenttype.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|associatedHubsUrls|String collection|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|documentSet|[documentSet](../resources/documentset.md)|**TODO: Add Description**|
|documentTemplate|[documentSetContent](../resources/documentsetcontent.md)|**TODO: Add Description**|
|group|String|**TODO: Add Description**|
|hidden|Boolean|**TODO: Add Description**|
|inheritedFrom|[itemReference](../resources/itemreference.md)|**TODO: Add Description**|
|isBuiltIn|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|order|[contentTypeOrder](../resources/contenttypeorder.md)|**TODO: Add Description**|
|parentId|String|**TODO: Add Description**|
|propagateChanges|Boolean|**TODO: Add Description**|
|readOnly|Boolean|**TODO: Add Description**|
|sealed|Boolean|**TODO: Add Description**|



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
  "@odata.type": "#microsoft.graph.contentType",
  "id": "6a9f1737-1737-6a9f-3717-9f6a37179f6a",
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

