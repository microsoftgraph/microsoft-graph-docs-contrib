---
title: "allowedValue resource type"
description: "Represents a predefined value that is allowed for a custom security attribute definition."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# allowedValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a predefined value that is allowed for a custom security attribute definition.

You can define up to 100 **allowedValue** objects per [customSecurityAttributeDefinition](customsecurityattributedefinition.md). The **allowedValue** object can't be renamed or deleted, but it can be deactivated by using the [Update allowedValue](../api/../api/allowedvalue-update.md) operation. This object is defined as a navigation property on the [customSecurityAttributeDefinition](customsecurityattributedefinition.md) resource and its value is returned only on `$expand`.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/customsecurityattributedefinition-list-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md) collection|Get a list of the [allowedValue](../resources/allowedvalue.md) objects and their properties.|
|[Get](../api/allowedvalue-get.md)|[allowedValue](../resources/allowedvalue.md)|Read the properties and relationships of an [allowedValue](../resources/allowedvalue.md) object.|
|[Create](../api/customsecurityattributedefinition-post-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md)|Create a new [allowedValue](../resources/allowedvalue.md) object.|
|[Update](../api/allowedvalue-update.md)|[allowedValue](../resources/allowedvalue.md)|Update the properties of an [allowedValue](../resources/allowedvalue.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| id | String | Identifier for the predefined value. Can be up to 64 characters long and include Unicode characters. Can include spaces, but some special characters aren't allowed. Can't be changed later. Case sensitive. Inherited from [entity](../resources/entity.md). |
|isActive|Boolean|Indicates whether the predefined value is active or deactivated. If set to `false`, this predefined value can't be assigned to any more supported directory objects.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
