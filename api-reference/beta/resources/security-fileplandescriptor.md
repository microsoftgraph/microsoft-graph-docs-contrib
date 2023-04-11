---
title: "filePlanDescriptor resource type"
description: "**TODO: Add Description**"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanDescriptor resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filePlanDescriptors](../api/security-retentionlabel-list.md)|[microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md) collection|Get a list of the [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md) objects and their properties.|
|[Create filePlanDescriptor](../api/security-retentionlabel-post.md)|[microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md)|Create a new [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md) object.|
|[List authorityTemplate](../api/security-fileplandescriptor-list-authoritytemplate.md)|[microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) collection|Get the authorityTemplate resources from the authorityTemplate navigation property.|
|[Add authorityTemplate](../api/security-fileplandescriptor-post-authoritytemplate.md)|[microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md)|Add authorityTemplate by posting to the authorityTemplate collection.|
|[Remove authorityTemplate](../api/security-fileplandescriptor-delete-authoritytemplate.md)|None|Remove a [microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) object.|
|[List categoryTemplate](../api/security-fileplandescriptor-list-categorytemplate.md)|[microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) collection|Get the categoryTemplate resources from the categoryTemplate navigation property.|
|[Add categoryTemplate](../api/security-fileplandescriptor-post-categorytemplate.md)|[microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md)|Add categoryTemplate by posting to the categoryTemplate collection.|
|[Remove categoryTemplate](../api/security-fileplandescriptor-delete-categorytemplate.md)|None|Remove a [microsoft.graph.security.categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md) object.|
|[List citationTemplate](../api/security-fileplandescriptor-list-citationtemplate.md)|[microsoft.graph.security.citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md) collection|Get the citationTemplate resources from the citationTemplate navigation property.|
|[Add citationTemplate](../api/security-fileplandescriptor-post-citationtemplate.md)|[microsoft.graph.security.citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md)|Add citationTemplate by posting to the citationTemplate collection.|
|[Remove citationTemplate](../api/security-fileplandescriptor-delete-citationtemplate.md)|None|Remove a [microsoft.graph.security.citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md) object.|
|[List departmentTemplate](../api/security-fileplandescriptor-list-departmenttemplate.md)|[microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) collection|Get the departmentTemplate resources from the departmentTemplate navigation property.|
|[Add departmentTemplate](../api/security-fileplandescriptor-post-departmenttemplate.md)|[microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md)|Add departmentTemplate by posting to the departmentTemplate collection.|
|[Remove departmentTemplate](../api/security-fileplandescriptor-delete-departmenttemplate.md)|None|Remove a [microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) object.|
|[List filePlanReferenceTemplate](../api/security-fileplandescriptor-list-fileplanreferencetemplate.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md) collection|Get the filePlanReferenceTemplate resources from the filePlanReferenceTemplate navigation property.|
|[Add filePlanReferenceTemplate](../api/security-fileplandescriptor-post-fileplanreferencetemplate.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md)|Add filePlanReferenceTemplate by posting to the filePlanReferenceTemplate collection.|
|[Remove filePlanReferenceTemplate](../api/security-fileplandescriptor-delete-fileplanreferencetemplate.md)|None|Remove a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authority|[microsoft.graph.security.authority](../resources/security-authority.md)|Specifies the underlying authority that describes the type of content to be retained and the retention schedule for it. |
|category|[microsoft.graph.security.appliedCategory](../resources/security-appliedcategory.md)|Specifies a group of similar types of content in a certain department.|
|citation|[microsoft.graph.security.citation](../resources/security-citation.md)|Specifies the unique identification defining a rule or regulation, following which, the label and content to which it is applied is scheduled to be retained or to be deleted. Additionally, you can specify the direct url of the citation and the jurisdiction or agency which published it.|
|department|[microsoft.graph.security.department](../resources/security-department.md)|Specifies the parent business vertical or department of an organization for a label and in turn the content to which it will be applied.|
|filePlanReference|[microsoft.graph.security.filePlanReference](../resources/security-fileplanreference.md)|Specifies a unique identifier of a label category which co-relates it to the that organization’s retention schedule. It is an alpha-numeric identifier that maps the retention label to a row on their retention schedule. |


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorityTemplate|[authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md)|Represent the properties of 'authority' file plan descriptor.|
|categoryTemplate|[categoryTemplate](../resources/security-fileplandescriptor-categorytemplate.md)|Represent the properties of 'category' file plan descriptor.|
|citationTemplate|[citationTemplate](../resources/security-fileplandescriptor-citationtemplate.md)|Represent the properties of 'citation' file plan descriptor.|
|departmentTemplate|[departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md)|Represent the properties of 'department' file plan descriptor.|
|filePlanReferenceTemplate|[filePlanReferenceTemplate](../resources/security-fileplandescriptor-fileplanreferencetemplate.md)|Represent the properties of 'file plan reference identification' file plan descriptor.|

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

