---
title: "subcategoryTemplate resource type"
description: "Represents the file plan descriptor of type subcategory for retention labels."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# subcategoryTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Supports CRUD operations to apply and manage the [filePlanSubcategory](security-fileplansubcategory.md) descriptor for a [retentionLabel](security-retentionlabel.md). The **subcategory** file plan descriptor supplements a retention label to improve the manageability and organization of Microsoft 365 content.

Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subcategories](../api/security-categorytemplate-list-subcategories.md)|[microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) collection|Get a list of the [microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) objects and their properties.|
|[Create subcategories](../api/security-categorytemplate-post-subcategories.md)|[microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md)|Create a new [microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Get subcategories](../api/security-subcategorytemplate-get.md)|[microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) object.|
|[Delete subcategories](../api/security-categorytemplate-delete-subcategories.md)|None|Delete a [microsoft.graph.security.subcategoryTemplate](../resources/security-subcategorytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the subcategory descriptor. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the subcategory descriptor is created. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|displayName|String|Unique string that defines a subcategory name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).|
|id|String|Unique ID of the subcategory. Inherited from [microsoft.graph.entity](../resources/entity.md). Read-only.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.subcategoryTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.subcategoryTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

