---
title: "dataSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# dataSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSources](../api/security-ediscoverysearch-list-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Get a list of the [dataSource](../resources/security-datasource.md) objects and their properties.|
|[Create dataSource](../api/security-ediscoverysearch-post-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Create a new [dataSource](../resources/security-datasource.md) object.|
|[Get dataSource](../api/security-datasource-get.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Read the properties and relationships of a [dataSource](../resources/security-datasource.md) object.|
|[Update dataSource](../api/security-datasource-update.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Update the properties of a [dataSource](../resources/security-datasource.md) object.|
|[Delete dataSource](../api/security-ediscoverysearch-delete-custodiansources.md)|None|Deletes a [dataSource](../resources/security-datasource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description**.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataSource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

