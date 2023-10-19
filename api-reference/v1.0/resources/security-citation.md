---
title: "citation resource type"
description: "Represents the file plan descriptor of type citation applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# citation resource type

Namespace: microsoft.graph.security

Represents a file plan descriptor that specifies a rule or regulation created by a jurisdiction to determine whether certain content should be retained or deleted. Used to supplement a [retention label](security-retentionlabel.md) for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete a **citation** descriptor, use the [citationTemplate](security-citationtemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|citationJurisdiction|String|Represents the jurisdiction or agency that published the citation.|
|citationUrl|String|Represents the URL to the published citation.|
|displayName|String|Unique string that defines a citation name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.citation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.citation",
  "displayName": "String",
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```

