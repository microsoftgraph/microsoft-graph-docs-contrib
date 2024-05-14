---
title: "filePlanDescriptor resource type"
description: "Represents a set of optional descriptors to supplement a retention label and improve the manageability and organization of content in Microsoft 365 for an organization."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# filePlanDescriptor resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a _set_ of optional file plan descriptors to supplement a [retention label](security-retentionlabel.md) and improve the manageability and organization of Microsoft 365 content.

You can add a descriptor by using the POST operation of the corresponding file plan descriptor _template_, and specifying data for the descriptor. For example, to include a [filePlanCitation](security-fileplancitation.md) descriptor, use the [create citationTemplate](../api/security-labelsroot-post-citations.md) operation. Similarly, you can use the GET or DELETE operations on the template resource for the descriptor.

To list the descriptors that supplement a retention label, use the [GET](../api/security-retentionlabel-get.md) operation on that [retentionLabel](security-retentionlabel.md) resource and  apply `$expand` on the **descriptors** relationship.

For information on how retention labels and file plan descriptors work in the [Microsoft Purview compliance portal](https://compliance.microsoft.com/), see [Use file plan to create and manage retention labels](/purview/file-plan-manager).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authority|[microsoft.graph.security.filePlanAuthority](../resources/security-fileplanauthority.md)|Represents the file plan descriptor of type authority applied to a particular retention label.|
|appliedCategory|[microsoft.graph.security.filePlanAppliedCategory](../resources/security-fileplanappliedcategory.md)|Represents the file plan descriptor of type category applied to a particular retention label.|
|citation|[microsoft.graph.security.filePlanCitation](../resources/security-fileplancitation.md)|Represents the file plan descriptor of type citation applied to a particular retention label.|
|department|[microsoft.graph.security.filePlanDepartment](../resources/security-fileplandepartment.md)|Represents the file plan descriptor of type department applied to a particular retention label.|
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
Here's a JSON representation of the resource.
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
    "@odata.type": "microsoft.graph.security.filePlanAuthority"
  },
  "category": {
    "@odata.type": "microsoft.graph.security.filePlanAppliedCategory"
  },
  "citation": {
    "@odata.type": "microsoft.graph.security.filePlanCitation"
  },
  "department": {
    "@odata.type": "microsoft.graph.security.filePlanDepartment"
  },
  "filePlanReference": {
    "@odata.type": "microsoft.graph.security.filePlanReference"
  }
}
```

