---
title: "customSecurityAttributeDefinition resource type"
description: "The schema of a custom security attribute (key-value pair)."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customSecurityAttributeDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The schema of a custom security attribute (key-value pair). For example, the custom security attribute name, description, data type, and allowed values.

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
|attributeSet|String|Attribute set of the custom security attribute to be used for access control on the attributes.|
|description|String|Description of the custom security attribute.|
|id|String|Identifier for the custom security attribute that is unique within a tenant.|
|isCollection|Boolean|Indicates whether the custom security attribute is a collection.|
|isSearchable|Boolean|Indicates whether custom security attribute values will be indexed for searching on objects that have the attribute.|
|name|String|Name that is unique within an attribute set.|
|status|String|Specifies whether custom security attribute is currently active or has been deprecated. Acceptable values are `Available` and `Deprecated`.|
|type|String|Data type of the attribute. Supported types are String, Integer, and Boolean.|
|usePreDefinedValuesOnly|Boolean|Indicates whether the custom security attribute is restricted to an allowed list of values only. If set to false, free-form values are allowed.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allowedValues|[allowedValue](../resources/allowedvalue.md) collection|Values that are allowed for this custom security attribute.|

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
