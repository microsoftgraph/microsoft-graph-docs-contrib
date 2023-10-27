---
title: "attributeSet resource type"
description: "Represents a group of related custom security attribute definitions."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# attributeSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of related custom security attribute definitions.

You can define up to 500 **attributeSet** objects in a tenant. The **attributeSet** object can't be renamed or deleted.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List attributeSets](../api/directory-list-attributesets.md)|[attributeSet](../resources/attributeset.md) collection|Get a list of the [attributeSet](../resources/attributeset.md) objects and their properties.|
|[Get attributeSet](../api/attributeset-get.md)|[attributeSet](../resources/attributeset.md)|Read the properties and relationships of an [attributeSet](../resources/attributeset.md) object.|
|[Create attributeSet](../api/directory-post-attributesets.md)|[attributeSet](../resources/attributeset.md)|Create a new [attributeSet](../resources/attributeset.md) object.|
|[Update attributeSet](../api/attributeset-update.md)|[attributeSet](../resources/attributeset.md)|Update the properties of an [attributeSet](../resources/attributeset.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the attribute set. Can be up to 128 characters long and include Unicode characters. Can be changed later.|
|id|String|Identifier for the attribute set that is unique within a tenant. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive. Inherited from [entity](../resources/entity.md).|
|maxAttributesPerSet|Int32|Maximum number of custom security attributes that can be defined in this attribute set. Default value is `null`. If not specified, the administrator can add up to the maximum of 500 active attributes per tenant. Can be changed later.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attributeSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeSet",
  "description": "String",
  "id": "String (identifier)",
  "maxAttributesPerSet": "Integer"
}
```
