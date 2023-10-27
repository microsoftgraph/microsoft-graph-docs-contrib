---
title: "filePlanDescriptorTemplate resource type"
description: "Represents a group of columns to improve the manageability and organization of the content you need to label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanDescriptorTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of columns to improve the manageability and organization of the content you need to label.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorities](../api/security-labelsroot-list-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) collection|Get the authorityTemplate resources from the authorityTemplate navigation property.|
|[Add authorities](../api/security-labelsroot-post-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Add authorityTemplate by posting to the authorityTemplate collection.|
|[Remove authorities](../api/security-labelsroot-delete-authorities.md)|None|Remove a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|
|[List categories](../api/security-labelsroot-list-categories.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) collection|Get the categoryTemplate resources from the categoryTemplate navigation property.|
|[Add categories](../api/security-labelsroot-post-categories.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Add categoryTemplate by posting to the categoryTemplate collection.|
|[Remove categories](../api/security-labelsroot-delete-categories.md)|None|Remove a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[List citations](../api/security-labelsroot-list-citations.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) collection|Get the citationTemplate resources from the citationTemplate navigation property.|
|[Add citations](../api/security-labelsroot-post-citations.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Add citationTemplate by posting to the citationTemplate collection.|
|[Remove citations](../api/security-labelsroot-delete-citations.md)|None|Remove a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|
|[List departments](../api/security-labelsroot-list-departments.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) collection|Get the departmentTemplate resources from the departmentTemplate navigation property.|
|[Add departments](../api/security-labelsroot-post-departments.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md)|Add departmentTemplate by posting to the departmentTemplate collection.|
|[Remove departments](../api/security-labelsroot-delete-departments.md)|None|Remove a [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object.|
|[List filePlanReferences](../api/security-labelsroot-list-fileplanreferences.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) collection|Get the filePlanReferenceTemplate resources from the filePlanReferenceTemplate navigation property.|
|[Add filePlanReferences](../api/security-labelsroot-post-fileplanreferences.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Add filePlanReferenceTemplate by posting to the filePlanReferenceTemplate collection.|
|[Remove filePlanReferences](../api/security-labelsroot-delete-fileplanreferences.md)|None|Remove a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the filePlanDescriptorTemplate column.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the filePlanDescriptorTemplate is created.|
|displayName|String|Unique string that defines a filePlanDescriptorTemplate name.|
|id|String|Unique ID of the filePlanDecriptorTemplate column. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.filePlanDescriptorTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanDescriptorTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

