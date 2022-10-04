---
title: "containerFilterConfig resource type"
description: "Defines how certain containers, such as groups and organizational units, should be considered in scope for a synchronization rule. This object is only used by Azure Active Directory Connect cloud sync scenarios."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# containerFilterConfig resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how certain containers, such as groups and organizational units, should be considered in scope for a synchronization rule. This object is only used by Azure Active Directory Connect cloud sync scenarios.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inclusionList|String collection|The names and identifiers of containers, such as groups and organizational units, that are in scope for a synchronization rule.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.containerFilterConfig"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.containerFilterConfig",
  "inclusionList": [
    "String"
  ]
}
```

