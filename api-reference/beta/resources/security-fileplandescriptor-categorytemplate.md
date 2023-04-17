---
title: "categoryTemplate resource type"
description: "Read the properties and relationships of a microsoft.graph.security.categoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# categoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) object.


Inherits from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List categoryTemplates](../api/security-fileplandescriptor-list-categorytemplate.md)|[microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) collection|Get a list of the [microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) objects and their properties.|
|[Create categoryTemplate](../api/security-fileplandescriptor-post-categorytemplate.md)|[microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md)|Create a new [microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) object.|
|[Get categoryTemplate](../api/security-fileplandescriptor-categorytemplate-get.md)|[microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) object.|
|[Delete categoryTemplate](../api/security-fileplandescriptor-delete-categorytemplate.md)|None|Delete a [microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) object.|
|[List subCategories](../api/security-fileplandescriptor-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) collection|Get the subCategoryTemplate resources from the subCategories navigation property.|
|[Create subCategoryTemplate](../api/security-fileplandescriptor-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md)|Create a new subCategoryTemplate object.|

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
|subCategories|[microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) collection|**TODO: Add Description**|

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

