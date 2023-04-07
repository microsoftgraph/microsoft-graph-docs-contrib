---
title: "categoryTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# categoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List categoryTemplates](../api/security-fileplandescriptor-list-categorytemplate.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) collection|Get a list of the [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) objects and their properties.|
|[Create categoryTemplate](../api/security-fileplandescriptor-post-categorytemplate.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Create a new [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[Get categoryTemplate](../api/security-categorytemplate-get.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[Update categoryTemplate](../api/security-categorytemplate-update.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Update the properties of a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[Delete categoryTemplate](../api/security-fileplandescriptor-delete-categorytemplate.md)|None|Delete a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[List subCategories](../api/security-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) collection|Get the subCategoryTemplate resources from the subCategories navigation property.|
|[Create subCategoryTemplate](../api/security-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Create a new subCategoryTemplate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|subCategories|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.categoryTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptorTemplate",
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

