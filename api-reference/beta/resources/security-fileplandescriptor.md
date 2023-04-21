---
title: "filePlanDescriptor resource type"
description: "Represents a group of columns to improve the manageability and organization of the content you need to label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanDescriptor resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of columns to improve the manageability and organization of the content you need to label.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filePlanDescriptors](../api/security-retentionlabel-list.md)|[microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md) collection|Get a list of the [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md) objects and their properties.|
|[Create filePlanDescriptor](../api/security-retentionlabel-post.md)|[microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md)|Create a new [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md) object.|
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
|authority|[microsoft.graph.security.authority](../resources/security-authority.md)|Represents the file plan descriptor of type authority applied to a particular retention labels.|
|appliedcategory|[microsoft.graph.security.appliedCategory](../resources/security-appliedcategory.md)|Represents the file plan descriptor of type category applied to a particular retention labels.|
|citation|[microsoft.graph.security.citation](../resources/security-citation.md)|Represents the file plan descriptor of type citation applied to a particular retention labels.|
|department|[microsoft.graph.security.department](../resources/security-department.md)|Represents the file plan descriptor of type department applied to a particular retention labels.|
|filePlanReference|[microsoft.graph.security.filePlanReference](../resources/security-fileplanreference.md)|Represents the file plan descriptor of type filePlanReference applied to a particular retention labels.  |


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorityTemplate|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)| Specifies the underlying authority that describes the type of content to be retained and its retention schedule.|
|categoryTemplate|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Specifies a group of similar types of content in a particular department.|
|citationTemplate|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted. |
|departmentTemplate|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md)|Specifies the  department or business unit of an organization to which a label belongs.|
|filePlanReferenceTemplate|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Specifies a unique alpha-numeric identifier for an organization’s retention schedule.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.filePlanDescriptor",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanDescriptor",
  "id": "String (identifier)",
  "authority": {
    "@odata.type": "microsoft.graph.security.authority"
  },
  "category": {
    "@odata.type": "microsoft.graph.security.appliedCategory"
  },
  "citation": {
    "@odata.type": "microsoft.graph.security.citation"
  },
  "department": {
    "@odata.type": "microsoft.graph.security.department"
  },
  "filePlanReference": {
    "@odata.type": "microsoft.graph.security.filePlanReference"
  }
}
```

