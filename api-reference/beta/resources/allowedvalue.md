---
title: "allowedValue resource type"
description: "A predefined value that is allowed for a custom security attribute definition."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# allowedValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A predefined value that is allowed for a custom security attribute definition.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List allowedValues](../api/customsecurityattributedefinition-list-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md) collection|Get a list of the [allowedValue](../resources/allowedvalue.md) objects and their properties.|
|[Get allowedValue](../api/allowedvalue-get.md)|[allowedValue](../resources/allowedvalue.md)|Read the properties and relationships of an [allowedValue](../resources/allowedvalue.md) object.|
|[Create allowedValue](../api/customsecurityattributedefinition-post-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md)|Create a new [allowedValue](../resources/allowedvalue.md) object.|
|[Update allowedValue](../api/allowedvalue-update.md)|[allowedValue](../resources/allowedvalue.md)|Update the properties of an [allowedValue](../resources/allowedvalue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Identifier for the allowed value. Required. |
|isActive|Boolean|Indicates whether the allowed value is active. If set to false, this value cannot be added to any other objects.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.allowedValue",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allowedValue",
  "id": "String (identifier)",
  "isActive": "Boolean"
}
```
