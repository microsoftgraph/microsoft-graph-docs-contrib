---
title: "customDataContainer resource type"
description: "Contains custom data object definitions and objects."
author: "biodero"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains [customObjectDefinition](../resources/customobjectdefinition.md) objects and the custom objects created from them.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List definitions](../api/customdatacontainer-list-definitions.md)|[customObjectDefinition](../resources/customobjectdefinition.md) collection|Get custom object definitions.|
|[Create definition](../api/customdatacontainer-post-definitions.md)|[customObjectDefinition](../resources/customobjectdefinition.md)|Create a custom object definition.|
|[List objects](../api/customdatacontainer-list-objects.md)|[customObject](../resources/customobject.md) collection|Get custom objects for a definition.|
|[Create object](../api/customdatacontainer-post-objects.md)|[customObject](../resources/customobject.md)|Create a custom object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the custom data container. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|definitions|[customObjectDefinition](../resources/customobjectdefinition.md) collection|Definitions that specify fields and behavior for custom objects.|
|objects|[customObject](../resources/customobject.md) collection|Custom objects created from custom object definitions.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customDataContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataContainer",
  "id": "String (identifier)"
}
```
