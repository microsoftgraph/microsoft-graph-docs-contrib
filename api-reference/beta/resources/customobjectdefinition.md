---
title: "customObjectDefinition resource type"
description: "Defines the schema and behavior of a custom object."
author: "biodero"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customObjectDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the schema and behavior of [customObject](../resources/customobject.md) objects.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/customdatacontainer-list-definitions.md)|[customObjectDefinition](../resources/customobjectdefinition.md) collection|Get custom object definitions.|
|[Create](../api/customdatacontainer-post-definitions.md)|[customObjectDefinition](../resources/customobjectdefinition.md)|Create a custom object definition.|
|[Get](../api/customobjectdefinition-get.md)|[customObjectDefinition](../resources/customobjectdefinition.md)|Get a custom object definition.|
|[Update](../api/customobjectdefinition-update.md)|[customObjectDefinition](../resources/customobjectdefinition.md)|Update a custom object definition.|
|[Delete](../api/customdatacontainer-delete-definitions.md)|None|Retire a custom object definition.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time when the definition was created.|
|description|String|Description of the definition.|
|displayName|String|Display name of the definition.|
|fields|customObjectFieldDefinition collection|Field definitions for custom objects. Each field has required immutable **name** and required **dataType** properties. The possible **dataType** values are: `string`, `boolean`, `datetime`, `int64`, `double`, `unknownFutureValue`. Optional properties are **description**, **isCaseSensitive**, **isFilterable**, **isImmutable**, **isNullable**, **isRequired**, and **isUnique**. **isCaseSensitive** applies only to `string` fields. String values use NFC normalization and have leading and trailing Unicode whitespace removed; comparisons ignore casing unless **isCaseSensitive** is `true`. All Boolean properties default to `false` except **isNullable**, which defaults to `true`.|
|id|String|Identifier for the definition. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time when the definition was last modified.|
|objectType|String|Immutable alternate key that uniquely identifies the definition. Values use NFC normalization and have leading and trailing Unicode whitespace removed. Comparisons ignore casing.|

Updates can change descriptions and add optional nullable fields only. Retiring a definition prevents future instances, retains existing instances and tombstones, and releases the **objectType** uniqueness guard. Recreating an **objectType** creates a definition with a new ID.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customObjectDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customObjectDefinition",
  "id": "String (identifier)",
  "objectType": "String",
  "displayName": "String",
  "description": "String",
  "fields": [{"@odata.type": "microsoft.graph.customObjectFieldDefinition"}],
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
