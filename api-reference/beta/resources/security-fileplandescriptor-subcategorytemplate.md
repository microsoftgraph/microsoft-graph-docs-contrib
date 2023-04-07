---
title: "subCategoryTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# subCategoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subCategoryTemplates](../api/security-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) collection|Get a list of the [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) objects and their properties.|
|[Create subCategoryTemplate](../api/security-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Create a new [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Get subCategoryTemplate](../api/security-subcategorytemplate-get.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Update subCategoryTemplate](../api/security-subcategorytemplate-update.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md)|Update the properties of a [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Delete subCategoryTemplate](../api/security-categorytemplate-delete-subcategories.md)|None|Delete a [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.subCategoryTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptorTemplate",
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

