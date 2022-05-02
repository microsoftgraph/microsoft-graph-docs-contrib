---
title: "dataSourceContainer resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# dataSourceContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSourceContainers](../api/security-datasourcecontainer-list.md)|[microsoft.graph.security.dataSourceContainer](../resources/security-datasourcecontainer.md) collection|Get a list of the [dataSourceContainer](../resources/security-datasourcecontainer.md) objects and their properties.|
|[Get dataSourceContainer](../api/security-datasourcecontainer-get.md)|[microsoft.graph.security.dataSourceContainer](../resources/security-datasourcecontainer.md)|Read the properties and relationships of a [dataSourceContainer](../resources/security-datasourcecontainer.md) object.|
|[Update dataSourceContainer](../api/security-datasourcecontainer-update.md)|[microsoft.graph.security.dataSourceContainer](../resources/security-datasourcecontainer.md)|Update the properties of a [dataSourceContainer](../resources/security-datasourcecontainer.md) object.|
|[Delete dataSourceContainer](../api/security-datasourcecontainer-delete.md)|None|Deletes a [dataSourceContainer](../resources/security-datasourcecontainer.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description**.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|releasedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|dataSourceContainerStatus|**TODO: Add Description**.The possible values are: `active`, `released`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataSourceContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataSourceContainer",
  "id": "String (identifier)",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

