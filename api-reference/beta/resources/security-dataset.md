---
title: "dataSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# dataSet resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSets](../api/security-dataset-list.md)|[microsoft.graph.security.dataSet](../resources/security-dataset.md) collection|Get a list of the [dataSet](../resources/security-dataset.md) objects and their properties.|
|[Get dataSet](../api/security-dataset-get.md)|[microsoft.graph.security.dataSet](../resources/security-dataset.md)|Read the properties and relationships of a [dataSet](../resources/security-dataset.md) object.|
|[Update dataSet](../api/security-dataset-update.md)|[microsoft.graph.security.dataSet](../resources/security-dataset.md)|Update the properties of a [dataSet](../resources/security-dataset.md) object.|
|[Delete dataSet](../api/security-dataset-delete.md)|None|Deletes a [dataSet](../resources/security-dataset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataSet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataSet",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

