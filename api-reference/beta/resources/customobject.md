---
title: "customObject resource type"
description: "Represents an instance of a custom object definition."
author: "biodero"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customObject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an instance of a [customObjectDefinition](../resources/customobjectdefinition.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/customdatacontainer-list-objects.md)|[customObject](../resources/customobject.md) collection|Get custom objects for a definition.|
|[Create](../api/customdatacontainer-post-objects.md)|[customObject](../resources/customobject.md)|Create a custom object.|
|[Get](../api/customobject-get.md)|[customObject](../resources/customobject.md)|Get a custom object.|
|[Update](../api/customobject-update.md)|[customObject](../resources/customobject.md)|Update a custom object.|
|[Delete](../api/customdatacontainer-delete-objects.md)|None|Retire a custom object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time when the custom object was created.|
|customProperties|Object|Open property bag governed by the field definitions in the associated custom object definition.|
|definitionId|String|Immutable identifier of the custom object definition that governs this object.|
|displayName|String|Display name of the custom object.|
|id|String|Identifier for the custom object. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time when the custom object was last modified.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customObject",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customObject",
  "id": "String (identifier)",
  "definitionId": "String",
  "displayName": "String",
  "customProperties": {"@odata.type": "microsoft.graph.customObjectProperties"},
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
