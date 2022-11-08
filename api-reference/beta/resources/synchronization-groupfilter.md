---
title: "groupFilter resource type"
description: "Defines how groups should be considered in scope for a synchronization rule. This object is only used by Azure Active Directory Connect cloud sync scenarios."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# groupFilter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how groups should be considered in scope for a synchronization rule. This object is only used by Azure Active Directory Connect cloud sync scenarios.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includedGroups|String collection|Identifiers of groups that are in scope for a synchronization rule.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupFilter",
  "includedGroups": [
    "String"
  ]
}
```

