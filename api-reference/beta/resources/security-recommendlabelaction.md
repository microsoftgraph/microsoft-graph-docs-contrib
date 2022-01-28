---
title: "recommendLabelAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# recommendLabelAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|[microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection|**TODO: Add Description**|
|actionSource|actionSource|**TODO: Add Description**.The possible values are: `manual`, `automatic`, `recommended`, `default`.|
|responsibleSensitiveTypeIds|Guid collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sensitivityLabel|[sensitivityLabel](../resources/security-sensitivitylabel.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.recommendLabelAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.recommendLabelAction",
  "actions": [
    {
      "@odata.type": "microsoft.graph.security.addContentFooterAction"
    }
  ],
  "actionSource": "String",
  "responsibleSensitiveTypeIds": [
    "Guid"
  ]
}
```

