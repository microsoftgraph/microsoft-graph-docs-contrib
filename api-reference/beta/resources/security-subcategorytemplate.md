---
title: "subCategoryTemplate resource type"
description: "Represents the file plan descriptor of type subcategory for retention labels."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# subCategoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file plan descriptor of type subcategory for retention labels.


Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subCategories](../api/security-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) collection|Get a list of the [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) objects and their properties.|
|[Create subCategories](../api/security-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Create a new [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Get subCategories](../api/security-subcategorytemplate-get.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Delete subCategories](../api/security-categorytemplate-delete-subcategories.md)|None|Delete a [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the subcategory. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|createdDateTime|DateTimeOffset|Represents the date and time in which the subcategory is created. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|displayName|String|Unique string that defines a subcategory name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|id|String|Unique ID of the subcategory. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.subCategoryTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.subCategoryTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

