---
title: "customSecurityAttributeDefinition resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customSecurityAttributeDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customSecurityAttributeDefinitions](../api/directory-list-customsecurityattributedefinitions.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) collection|Get a list of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects and their properties.|
|[Create customSecurityAttributeDefinition](../api/directory-post-customsecurityattributedefinitions.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md)|Create a new [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|
|[Get customSecurityAttributeDefinition](../api/customsecurityattributedefinition-get.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md)|Read the properties and relationships of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|
|[Update customSecurityAttributeDefinition](../api/customsecurityattributedefinition-update.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md)|Update the properties of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|
|[Delete customSecurityAttributeDefinition](../api/customsecurityattributedefinition-delete.md)|None|Deletes a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|
|[List allowedValues](../api/customsecurityattributedefinition-list-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md) collection|Get the allowedValue resources from the allowedValues navigation property.|
|[Create allowedValue](../api/customsecurityattributedefinition-post-allowedvalues.md)|[allowedValue](../resources/allowedvalue.md)|Create a new allowedValue object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributeSet|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isCollection|Boolean|**TODO: Add Description**|
|isSearchable|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|
|type|String|**TODO: Add Description**|
|usePreDefinedValuesOnly|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allowedValues|[allowedValue](../resources/allowedvalue.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customSecurityAttributeDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customSecurityAttributeDefinition",
  "attributeSet": "String",
  "description": "String",
  "id": "String (identifier)",
  "isCollection": "Boolean",
  "isSearchable": "Boolean",
  "name": "String",
  "status": "String",
  "type": "String",
  "usePreDefinedValuesOnly": "Boolean"
}
```
