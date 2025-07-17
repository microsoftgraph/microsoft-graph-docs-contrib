---
title: "filePlanCitation resource type"
description: "Represents the file plan descriptor of type citation applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# filePlanCitation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file plan descriptor that specifies a rule or regulation created by a jurisdiction to determine whether certain content should be retained or deleted. Used to supplement a [retention label](security-retentionlabel.md) for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete a **filePlanCitation** descriptor, use the [citationTemplate](security-citationtemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|citationJurisdiction|String|Represents the jurisdiction or agency that published the filePlanCitation.|
|citationUrl|String|Represents the URL to the published filePlanCitation.|
|displayName|String|Unique string that defines a filePlanCitation name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanCitation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanCitation",
  "displayName": "String",
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```

