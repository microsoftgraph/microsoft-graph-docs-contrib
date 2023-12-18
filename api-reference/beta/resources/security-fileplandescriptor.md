---
title: "filePlanDescriptor resource type"
description: "Represents a group of columns associated with a particular retention label, to improve the manageability and organization of the content you need to label."
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
None.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authority|[microsoft.graph.security.authority](../resources/security-authority.md)|Represents the file plan descriptor of type authority applied to a particular retention label.|
|appliedcategory|[microsoft.graph.security.appliedCategory](../resources/security-appliedcategory.md)|Represents the file plan descriptor of type category applied to a particular retention label.|
|citation|[microsoft.graph.security.citation](../resources/security-citation.md)|Represents the file plan descriptor of type citation applied to a particular retention label.|
|department|[microsoft.graph.security.department](../resources/security-department.md)|Represents the file plan descriptor of type department applied to a particular retention label.|
|filePlanReference|[microsoft.graph.security.filePlanReference](../resources/security-fileplanreference.md)|Represents the file plan descriptor of type filePlanReference applied to a particular retention label.  |


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

