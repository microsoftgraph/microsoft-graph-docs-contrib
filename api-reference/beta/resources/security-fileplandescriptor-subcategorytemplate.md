---
title: "subCategoryTemplate resource type"
description: "Represents the 'sub-category' file plan descriptor for retention labels."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# subCategoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the 'sub-category' file plan descriptor for retention labels.


Inherits from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subCategoryTemplates](../api/security-fileplandescriptor-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) collection|Get a list of the [microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) objects and their properties.|
|[Create subCategoryTemplate](../api/security-fileplandescriptor-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md)|Create a new [microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) object.|
|[Get subCategoryTemplate](../api/security-fileplandescriptor-subcategorytemplate-get.md)|[microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) object.|
|[Delete subCategoryTemplate](../api/security-fileplandescriptor-categorytemplate-delete-subcategories.md)|None|Delete a [microsoft.graph.security.subCategoryTemplate](../resources/security-fileplandescriptor-subcategorytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

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

