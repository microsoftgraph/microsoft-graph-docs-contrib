---
title: "contentType resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# contentType resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentTypes](../api/contenttype-list.md)|[contentType](../resources/contenttype.md) collection|Get a list of the [contentType](../resources/contenttype.md) objects and their properties.|
|[Create contentType](../api/contenttype-create.md)|[contentType](../resources/contenttype.md)|Create a new [contentType](../resources/contenttype.md) object.|
|[Get contentType](../api/contenttype-get.md)|[contentType](../resources/contenttype.md)|Read the properties and relationships of a [contentType](../resources/contenttype.md) object.|
|[Update contentType](../api/contenttype-update.md)|[contentType](../resources/contenttype.md)|Update the properties of a [contentType](../resources/contenttype.md) object.|
|[Delete contentType](../api/contenttype-delete.md)|None|Deletes a [contentType](../resources/contenttype.md) object.|
|[isPublished](../api/contenttype-ispublished.md)|Boolean|**TODO: Add Description**|
|[associateWithHubSites](../api/contenttype-associatewithhubsites.md)|[contentType](../resources/contenttype.md)|**TODO: Add Description**|
|[copyToDefaultContentLocation](../api/contenttype-copytodefaultcontentlocation.md)|[contentType](../resources/contenttype.md)|**TODO: Add Description**|
|[publish](../api/contenttype-publish.md)|[contentType](../resources/contenttype.md)|**TODO: Add Description**|
|[unpublish](../api/contenttype-unpublish.md)|[contentType](../resources/contenttype.md)|**TODO: Add Description**|
|[addCopy](../api/contenttype-addcopy.md)|[contentType](../resources/contenttype.md)|**TODO: Add Description**|
|[List contentType](../api/contenttype-list-base.md)|[contentType](../resources/contenttype.md) collection|Get the contentType resources from the base navigation property.|
|[Add contentType](../api/contenttype-post-base.md)|[contentType](../resources/contenttype.md)|Add base by posting to the base collection.|
|[List baseTypes](../api/contenttype-list-basetypes.md)|[contentType](../resources/contenttype.md) collection|Get the contentType resources from the baseTypes navigation property.|
|[Add contentType](../api/contenttype-post-basetypes.md)|[contentType](../resources/contenttype.md)|Add baseTypes by posting to the baseTypes collection.|
|[List columnPositions](../api/contenttype-list-columnpositions.md)|[columnDefinition](../resources/columndefinition.md) collection|Get the columnDefinition resources from the columnPositions navigation property.|
|[Add columnDefinition](../api/contenttype-post-columnpositions.md)|[columnDefinition](../resources/columndefinition.md)|Add columnPositions by posting to the columnPositions collection.|
|[List columns](../api/contenttype-list-columns.md)|[columnDefinition](../resources/columndefinition.md) collection|Get the columnDefinition resources from the columns navigation property.|
|[Create columnDefinition](../api/contenttype-post-columns.md)|[columnDefinition](../resources/columndefinition.md)|Create a new columnDefinition object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedHubUrls|String collection|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|documentSet|[documentSet](../resources/documentset.md)|**TODO: Add Description**|
|documentTemplate|[documentSetContent](../resources/documentsetcontent.md)|**TODO: Add Description**|
|group|String|**TODO: Add Description**|
|hidden|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
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
```

