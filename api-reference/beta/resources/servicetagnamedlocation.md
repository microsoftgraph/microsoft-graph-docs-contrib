---
title: "serviceTagNamedLocation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# serviceTagNamedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [namedLocation](../resources/namedlocation.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/servicetagnamedlocation-list.md)|[serviceTagNamedLocation](../resources/servicetagnamedlocation.md) collection|Get a list of the serviceTagNamedLocation objects and their properties.|
|[Get](../api/servicetagnamedlocation-get.md)|[serviceTagNamedLocation](../resources/servicetagnamedlocation.md)|Read the properties and relationships of [serviceTagNamedLocation](../resources/servicetagnamedlocation.md) object.|
|[Update](../api/servicetagnamedlocation-update.md)|[serviceTagNamedLocation](../resources/servicetagnamedlocation.md)|Update the properties of a serviceTagNamedLocation object.|
|[Delete](../api/servicetagnamedlocation-delete.md)|None|Delete a serviceTagNamedLocation object.|
|[restore](../api/servicetagnamedlocation-restore.md)|[namedLocation](../resources/namedlocation.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|
|displayName|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|id|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md). Inherits from [entity](../resources/entity.md)|
|isTrusted|Boolean|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|serviceTags|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceTagNamedLocation",
  "baseType": "microsoft.graph.namedLocation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceTagNamedLocation",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "serviceTags": [
    "String"
  ],
  "isTrusted": "Boolean"
}
```

