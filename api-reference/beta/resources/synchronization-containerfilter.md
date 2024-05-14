---
title: "containerFilter resource type"
description: "Defines how certain containers, such as organizational units, should be considered in scope for a synchronization rule. This object is only used by Azure Active Directory Connect cloud sync scenarios."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# containerFilter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how certain containers, such as organizational units, should be considered in scope for a synchronization rule. This object is only used by Azure Active Directory Connect cloud sync scenarios.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includedContainers|String collection|The identifiers of containers, such as organizational units, that are in scope for a synchronization rule. For Active Directory organizational units, use the distinguished names. An empty list means no container filtering is configured.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.containerFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.containerFilter",
  "includedContainers": [
    "String"
  ]
}
```

