---
title: "customSecurityAttributeDefinition resource type"
description: "An object that that represents the schema of a custom security attribute (key-value pair). For example, the custom security attribute name, description, data type, and allowed values."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customSecurityAttributeDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object that represent the schema of a custom security attribute (key-value pair). For example, the custom security attribute name, description, data type, and allowed values.

Up to 500 active objects can be defined in a tenant. The **customSecurityAttributeDefiniton** object can't be deleted, but can be deactivated by using the [Update customSecurityAttributeDefinition](../api/customsecurityattributedefinition-update.md) operation.

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
|attributeSet|String|Name of the group of related custom security attributes. Must be unique within a tenant. Cannot include spaces or special characters. Cannot be changed later.|
|description|String|Description of the custom security attribute. Can be changed later.|
|id|String|Unique identifier of the custom security attribute, which is a combination of the attribute set name and the custom security attribute name separated by an underscore (&lt;attributeSet&gt;_&lt;name&gt;). id is auto generated and cannot be set.|
|isCollection|Boolean|Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later. If `type` is set to Boolean, `isCollection` cannot be set to true.|
|isSearchable|Boolean|Indicates whether custom security attribute values will be indexed for searching on objects that are assigned attribute values. Cannot be changed later.|
|name|String|Name of the custom security attribute. Must be unique within an attribute set. Cannot include spaces or special characters. Cannot be changed later.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Can be changed later.|
|type|String|Data type for the custom security attribute values. Supported types are `Boolean`, `Integer`, and `String`. Cannot be changed later.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can later be changed from true to false, but cannot be changed from false to true. If `type` is set to Boolean, `usePreDefinedValuesOnly` cannot be set to true. |


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
