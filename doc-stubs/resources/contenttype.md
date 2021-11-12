---
title: "contentType resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# contentType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentTypes](../api/contenttype-list.md)|[contentType](../resources/contenttype.md) collection|Get a list of the [contentType](../resources/contenttype.md) objects and their properties.|
|[Create contentType](../api/list-post-contenttypes.md)|[contentType](../resources/contenttype.md)|Create a new [contentType](../resources/contenttype.md) object.|
|[Get contentType](../api/contenttype-get.md)|[contentType](../resources/contenttype.md)|Read the properties and relationships of a [contentType](../resources/contenttype.md) object.|
|[Update contentType](../api/contenttype-update.md)|[contentType](../resources/contenttype.md)|Update the properties of a [contentType](../resources/contenttype.md) object.|
|[Delete contentType](../api/contenttype-delete.md)|None|Deletes a [contentType](../resources/contenttype.md) object.|
|[getCompatibleHubContentTypes](../api/contenttype-getcompatiblehubcontenttypes.md)|[contentType](../resources/contenttype.md) collection|**TODO: Add Description**|
|[addCopyFromContentTypeHub](../api/contenttype-addcopyfromcontenttypehub.md)|[contentType](../resources/contenttype.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedHubsUrls|String collection|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|documentSet|[documentSet](../resources/documentset.md)|**TODO: Add Description**|
|documentTemplate|[documentSetContent](../resources/documentsetcontent.md)|**TODO: Add Description**|
|group|String|**TODO: Add Description**|
|hidden|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inheritedFrom|[itemReference](../resources/itemreference.md)|**TODO: Add Description**|
|isBuiltIn|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|order|[contentTypeOrder](../resources/contenttypeorder.md)|**TODO: Add Description**|
|parentId|String|**TODO: Add Description**|
|propagateChanges|Boolean|**TODO: Add Description**|
|readOnly|Boolean|**TODO: Add Description**|
|sealed|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|base|[contentType](../resources/contenttype.md)|**TODO: Add Description**|
|baseTypes|[contentType](../resources/contenttype.md) collection|**TODO: Add Description**|
|columnLinks|[columnLink](../resources/columnlink.md) collection|**TODO: Add Description**|
|columnPositions|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|
|columns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contentType",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
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
```

