---
title: "columnDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# columnDefinition resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List columnDefinitions](../api/columndefinition-list.md)|[columnDefinition](../resources/columndefinition.md) collection|Get a list of the [columnDefinition](../resources/columndefinition.md) objects and their properties.|
|[Create columnDefinition](../api/columndefinition-create.md)|[columnDefinition](../resources/columndefinition.md)|Create a new [columnDefinition](../resources/columndefinition.md) object.|
|[Get columnDefinition](../api/columndefinition-get.md)|[columnDefinition](../resources/columndefinition.md)|Read the properties and relationships of a [columnDefinition](../resources/columndefinition.md) object.|
|[Update columnDefinition](../api/columndefinition-update.md)|[columnDefinition](../resources/columndefinition.md)|Update the properties of a [columnDefinition](../resources/columndefinition.md) object.|
|[Delete columnDefinition](../api/columndefinition-delete.md)|None|Deletes a [columnDefinition](../resources/columndefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|boolean|[booleanColumn](../resources/booleancolumn.md)|**TODO: Add Description**|
|calculated|[calculatedColumn](../resources/calculatedcolumn.md)|**TODO: Add Description**|
|choice|[choiceColumn](../resources/choicecolumn.md)|**TODO: Add Description**|
|columnGroup|String|**TODO: Add Description**|
|columnValidation|[columnValidation](../resources/columnvalidation.md)|**TODO: Add Description**|
|contentApprovalStatus|[contentApprovalStatusColumn](../resources/contentapprovalstatuscolumn.md)|**TODO: Add Description**|
|currency|[currencyColumn](../resources/currencycolumn.md)|**TODO: Add Description**|
|dateTime|[dateTimeColumn](../resources/datetimecolumn.md)|**TODO: Add Description**|
|defaultValue|[defaultColumnValue](../resources/defaultcolumnvalue.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|enforceUniqueValues|Boolean|**TODO: Add Description**|
|geolocation|[geolocationColumn](../resources/geolocationcolumn.md)|**TODO: Add Description**|
|hidden|Boolean|**TODO: Add Description**|
|hyperlinkOrPicture|[hyperlinkOrPictureColumn](../resources/hyperlinkorpicturecolumn.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|indexed|Boolean|**TODO: Add Description**|
|isDeletable|Boolean|**TODO: Add Description**|
|isReorderable|Boolean|**TODO: Add Description**|
|isSealed|Boolean|**TODO: Add Description**|
|lookup|[lookupColumn](../resources/lookupcolumn.md)|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|number|[numberColumn](../resources/numbercolumn.md)|**TODO: Add Description**|
|personOrGroup|[personOrGroupColumn](../resources/personorgroupcolumn.md)|**TODO: Add Description**|
|propagateChanges|Boolean|**TODO: Add Description**|
|readOnly|Boolean|**TODO: Add Description**|
|required|Boolean|**TODO: Add Description**|
|term|[termColumn](../resources/termcolumn.md)|**TODO: Add Description**|
|text|[textColumn](../resources/textcolumn.md)|**TODO: Add Description**|
|thumbnail|[thumbnailColumn](../resources/thumbnailcolumn.md)|**TODO: Add Description**|
|type|columnTypes|**TODO: Add Description**. Possible values are: `note`, `text`, `choice`, `multichoice`, `number`, `currency`, `dateTime`, `lookup`, `boolean`, `user`, `url`, `calculated`, `location`, `geolocation`, `term`, `multiterm`, `thumbnail`, `approvalStatus`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.columnDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.columnDefinition",
  "id": "String (identifier)",
  "boolean": {
    "@odata.type": "microsoft.graph.booleanColumn"
  },
  "calculated": {
    "@odata.type": "microsoft.graph.calculatedColumn"
  },
  "choice": {
    "@odata.type": "microsoft.graph.choiceColumn"
  },
  "columnGroup": "String",
  "columnValidation": {
    "@odata.type": "microsoft.graph.columnValidation"
  },
  "contentApprovalStatus": {
    "@odata.type": "microsoft.graph.contentApprovalStatusColumn"
  },
  "currency": {
    "@odata.type": "microsoft.graph.currencyColumn"
  },
  "dateTime": {
    "@odata.type": "microsoft.graph.dateTimeColumn"
  },
  "defaultValue": {
    "@odata.type": "microsoft.graph.defaultColumnValue"
  },
  "description": "String",
  "displayName": "String",
  "enforceUniqueValues": "Boolean",
  "geolocation": {
    "@odata.type": "microsoft.graph.geolocationColumn"
  },
  "hidden": "Boolean",
  "hyperlinkOrPicture": {
    "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn"
  },
  "indexed": "Boolean",
  "isDeletable": "Boolean",
  "isReorderable": "Boolean",
  "isSealed": "Boolean",
  "propagateChanges": "Boolean",
  "lookup": {
    "@odata.type": "microsoft.graph.lookupColumn"
  },
  "name": "String",
  "number": {
    "@odata.type": "microsoft.graph.numberColumn"
  },
  "personOrGroup": {
    "@odata.type": "microsoft.graph.personOrGroupColumn"
  },
  "readOnly": "Boolean",
  "required": "Boolean",
  "term": {
    "@odata.type": "microsoft.graph.termColumn"
  },
  "thumbnail": {
    "@odata.type": "microsoft.graph.thumbnailColumn"
  },
  "type": "String",
  "text": {
    "@odata.type": "microsoft.graph.textColumn"
  }
}
```

