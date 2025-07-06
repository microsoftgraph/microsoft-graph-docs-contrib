---
title: "computeRightsAndInheritanceResult resource type"
description: "Represents the result entity for a compute rights and inheritance operation."
author: "kylemar"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# computeRightsAndInheritanceResult resource type

Namespace: microsoft.graph

Represents the result entity for a compute rights and inheritance operation.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|contentRights|[labelContentRight](../resources/labelcontentright.md) collection|A collection of content rights entities for the content.|
|inheritedLabel|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)|The sensitivity label that is inherited by the content based on the input labels and content formats.|
|sensitivityLabels|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection|A collection of sensitivity labels that are applicable to the content.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.computeRightsAndInheritanceResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.computeRightsAndInheritanceResult"
}
```
