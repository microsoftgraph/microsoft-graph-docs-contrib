---
title: "attributeSet resource type"
description: "A group of related custom security attributes."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# attributeSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of related custom security attributes.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List attributeSets](../api/directory-list-attributesets.md)|[attributeSet](../resources/attributeset.md) collection|Get a list of the [attributeSet](../resources/attributeset.md) objects and their properties.|
|[Create attributeSet](../api/directory-post-attributesets.md)|[attributeSet](../resources/attributeset.md)|Create a new [attributeSet](../resources/attributeset.md) object.|
|[Get attributeSet](../api/attributeset-get.md)|[attributeSet](../resources/attributeset.md)|Read the properties and relationships of an [attributeSet](../resources/attributeset.md) object.|
|[Update attributeSet](../api/attributeset-update.md)|[attributeSet](../resources/attributeset.md)|Update the properties of an [attributeSet](../resources/attributeset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the attribute set.|
|id|String|Identifier for the attribute set that is unique within a tenant.|
|maxAttributesPerSet|Int32|Maximum number of attributes that can be defined in this attribute set. Value is null by default. When an attribute set is created, if the value is not specified, the administrator can assign as many attributes to a attribute set in that case. The maximum number of attributes per attribute set is controlled by the maximum number of attributes that can be created on the tenant, which is 500 attributes.|

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
