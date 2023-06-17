---
title: "customSecurityAttributeDefinition resource type"
description: "Represents the schema of a custom security attribute (key-value pair)."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customSecurityAttributeDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the schema of a custom security attribute (key-value pair). For example, the custom security attribute name, description, data type, and allowed values.

You can define up to 500 active objects in a tenant. The **customSecurityAttributeDefinition** object can't be renamed or deleted, but it can be deactivated by using the [Update customSecurityAttributeDefinition](../api/customsecurityattributedefinition-update.md) operation. Must be part of an [attributeSet](../resources/attributeset.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List customSecurityAttributeDefinitions](../api/directory-list-customsecurityattributedefinitions.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) collection|Get a list of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects and their properties.|
|[Get customSecurityAttributeDefinition](../api/customsecurityattributedefinition-get.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md)|Read the properties and relationships of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|
|[Create customSecurityAttributeDefinition](../api/directory-post-customsecurityattributedefinitions.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md)|Create a new [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|
|[Update customSecurityAttributeDefinition](../api/customsecurityattributedefinition-update.md)|[customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md)|Update the properties of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeSet|String|Name of the attribute set. Case insensitive.|
|description|String|Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Can be changed later.|
|id|String|Identifier of the custom security attribute, which is a combination of the attribute set name and the custom security attribute name separated by an underscore (`attributeSet`_`name`). The **id** property is auto generated and cannot be set. Case insensitive. Inherited from [entity](../resources/entity.md).|
|isCollection|Boolean|Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later. If **type** is set to `Boolean`, **isCollection** cannot be set to `true`.|
|isSearchable|Boolean|Indicates whether custom security attribute values are indexed for searching on objects that are assigned attribute values. Cannot be changed later.|
|name|String|Name of the custom security attribute. Must be unique within an attribute set. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are: `Available` and `Deprecated`. Can be changed later.|
|type|String|Data type for the custom security attribute values. Supported types are: `Boolean`, `Integer`, and `String`. Cannot be changed later.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to `false`, free-form values are allowed. Can later be changed from `true` to `false`, but cannot be changed from `false` to `true`. If **type** is set to `Boolean`, **usePreDefinedValuesOnly** cannot be set to `true`. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|allowedValues|[allowedValue](../resources/allowedvalue.md) collection|Values that are predefined for this custom security attribute. This navigation property is not returned by default and must be specified in an `$expand` query. For example, `/directory/customSecurityAttributeDefinitions?$expand=allowedValues`.|

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
