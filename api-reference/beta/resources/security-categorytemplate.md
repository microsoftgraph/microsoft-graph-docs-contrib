---
title: "categoryTemplate resource type"
description: "Specifies a group of similar types of content in a particular department."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# categoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies a group of similar types of content in a particular department.


Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List categories](../api/security-labelsroot-list-categories.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) collection|Get a list of the [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) objects and their properties.|
|[Create categories](../api/security-labelsroot-post-categories.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Create a new [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[Get categories](../api/security-categorytemplate-get.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[Delete categories](../api/security-labelsroot-delete-categories.md)|None|Delete a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[List subCategories](../api/security-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) collection|Get the subCategoryTemplate resources from the subCategories navigation property.|
|[Create subCategories](../api/security-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Create a new subCategoryTemplate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the category. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|createdDateTime|DateTimeOffset|Represents the date and time in which the category is created. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|displayName|String|Unique string that defines a category name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|id|String|Unique ID of the category. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|subCategories|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) collection|Represents all subcategories under a particular category.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.categoryTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.categoryTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

