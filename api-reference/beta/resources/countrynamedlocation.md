---
title: "countryNamedLocation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# countryNamedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [namedLocation](../resources/namedlocation.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/countrynamedlocation-list.md)|[countryNamedLocation](../resources/countrynamedlocation.md) collection|Get a list of the countryNamedLocation objects and their properties.|
|[Get](../api/countrynamedlocation-get.md)|[countryNamedLocation](../resources/countrynamedlocation.md)|Read the properties and relationships of [countryNamedLocation](../resources/countrynamedlocation.md) object.|
|[Update](../api/countrynamedlocation-update.md)|[countryNamedLocation](../resources/countrynamedlocation.md)|Update the properties of a countryNamedLocation object.|
|[Delete](../api/countrynamedlocation-delete.md)|None|Delete a countryNamedLocation object.|
|[restore](../api/countrynamedlocation-restore.md)|[namedLocation](../resources/namedlocation.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|countriesAndRegions|String collection|**TODO: Add Description**|
|countryLookupMethod|countryLookupMethodType|**TODO: Add Description**. The possible values are: `clientIpAddress`, `authenticatorAppGps`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|
|displayName|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|
|id|String|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md). Inherits from [entity](../resources/entity.md)|
|includeUnknownCountriesAndRegions|Boolean|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [namedLocation](../resources/namedlocation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.countryNamedLocation",
  "baseType": "microsoft.graph.namedLocation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.countryNamedLocation",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "countriesAndRegions": [
    "String"
  ],
  "includeUnknownCountriesAndRegions": "Boolean",
  "countryLookupMethod": "String"
}
```

