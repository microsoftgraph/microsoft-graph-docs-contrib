---
title: "reviewSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reviewSet resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List reviewSets](../api/reviewset-list.md)|[reviewSet](../resources/reviewset.md) collection|Get a list of the [reviewSet](../resources/reviewset.md) objects and their properties.|
|[Create reviewSet](../api/reviewset-create.md)|[reviewSet](../resources/reviewset.md)|Create a new [reviewSet](../resources/reviewset.md) object.|
|[Get reviewSet](../api/reviewset-get.md)|[reviewSet](../resources/reviewset.md)|Read the properties and relationships of a [reviewSet](../resources/reviewset.md) object.|
|[Update reviewSet](../api/reviewset-update.md)|[reviewSet](../resources/reviewset.md)|Update the properties of a [reviewSet](../resources/reviewset.md) object.|
|[Delete reviewSet](../api/reviewset-delete.md)|None|Deletes a [reviewSet](../resources/reviewset.md) object.|
|[export](../api/reviewset-export.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|queries|[reviewSetQuery](../resources/reviewsetquery.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reviewSet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reviewSet",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

