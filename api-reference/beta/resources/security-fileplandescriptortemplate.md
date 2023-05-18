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
|[List authorityTemplate](../api/security-authoritytemplate-list.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) collection|Get the authorityTemplate resources from the authorityTemplate navigation property.|
|[Add authorityTemplate](../api/security-authoritytemplate-post.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Add authorityTemplate by posting to the authorityTemplate collection.|
|[Remove authorityTemplate](../api/security-authoritytemplate-delete.md)|None|Remove a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|
|[List categoryTemplate](../api/security-categorytemplate-list.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) collection|Get the categoryTemplate resources from the categoryTemplate navigation property.|
|[Add categoryTemplate](../api/security-categorytemplate-post.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Add categoryTemplate by posting to the categoryTemplate collection.|
|[Remove categoryTemplate](../api/security-categorytemplate-delete.md)|None|Remove a [microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) object.|
|[List citationTemplate](../api/security-citationtemplate-list.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) collection|Get the citationTemplate resources from the citationTemplate navigation property.|
|[Add citationTemplate](../api/security-citationtemplate-post.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Add citationTemplate by posting to the citationTemplate collection.|
|[Remove citationTemplate](../api/security-citationtemplate-delete.md)|None|Remove a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|
|[List departmentTemplate](../api/security-departmenttemplate-list.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) collection|Get the departmentTemplate resources from the departmentTemplate navigation property.|
|[Add departmentTemplate](../api/security-departmenttemplate-post.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md)|Add departmentTemplate by posting to the departmentTemplate collection.|
|[Remove departmentTemplate](../api/security-departmenttemplate-delete.md)|None|Remove a [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object.|
|[List filePlanReferenceTemplate](../api/security-fileplanreferencetemplate-list.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) collection|Get the filePlanReferenceTemplate resources from the filePlanReferenceTemplate navigation property.|
|[Add filePlanReferenceTemplate](../api/security-fileplanreferencetemplate-post.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Add filePlanReferenceTemplate by posting to the filePlanReferenceTemplate collection.|
|[Remove filePlanReferenceTemplate](../api/security-fileplanreferencetemplate-delete.md)|None|Remove a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|Represents the user who created the filePlanDescriptorTemplate column.|
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

