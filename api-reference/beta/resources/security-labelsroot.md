---
title: "labelsRoot resource type"
description: "Represents the entry point for the retentionLabels resource type."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# labelsRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for the [retentionLabel](security-retentionlabel.md) resource type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionLabels](../api/security-labelsroot-list-retentionlabel.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) collection |Get a list of the [retentionLabel](../resources/security-retentionlabel.md) objects and their properties.|
|[Create retentionLabel](../api/security-labelsroot-post-retentionlabel.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Create a new [retentionLabel](../resources/security-retentionlabel.md) object.|
|[List authorities](../api/security-labelsroot-list-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) collection|Get the authorityTemplate resources from the authorities navigation property.|
|[Create authorities](../api/security-labelsroot-post-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Create a new authorityTemplate object.|
|[List categories](../api/security-labelsroot-list-categories.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) collection|Get the categoryTemplate resources from the categories navigation property.|
|[Create categories](../api/security-labelsroot-post-categories.md)|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md)|Create a new categoryTemplate object.|
|[List citations](../api/security-labelsroot-list-citations.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) collection|Get the citationTemplate resources from the citations navigation property.|
|[Create citations](../api/security-labelsroot-post-citations.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Create a new citationTemplate object.|
|[List departments](../api/security-labelsroot-list-departments.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) collection|Get the departmentTemplate resources from the departments navigation property.|
|[Create departments](../api/security-labelsroot-post-departments.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md)|Create a new departmentTemplate object.|
|[List filePlanReferences](../api/security-labelsroot-list-fileplanreferences.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) collection|Get the filePlanReferenceTemplate resources from the filePlanReferences navigation property.|
|[Create filePlanReferences](../api/security-labelsroot-post-fileplanreferences.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Create a new filePlanReferenceTemplate object.|

## Properties
None.



## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorities|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) collection|Specifies the underlying authority that describes the type of content to be retained and its retention schedule.|
|categories|[microsoft.graph.security.categoryTemplate](../resources/security-categorytemplate.md) collection|Specifies a group of similar types of content in a particular department.|
|citations|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) collection|The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted.|
|departments|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) collection|Specifies the department or business unit of an organization to which a label belongs.|
|filePlanReferences|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) collection|Specifies a unique alpha-numeric identifier for an organization’s retention schedule.|
|retentionLabels|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) collection|Represents how customers can manage their data, whether and for how long to retain or delete it.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.labelsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.labelsRoot",
  "id": "String (identifier)"
}
```

