---
title: "attackSimulationInfo resource type"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackSimDateTime|DateTimeOffset|**TODO: Add Description**|
|attackSimDurationTime|Duration|**TODO: Add Description**|
|attackSimId|Guid|**TODO: Add Description**|
|attackSimUserId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.attackSimulationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.attackSimulationInfo",
  "attackSimId": "Guid",
  "attackSimDateTime": "String (timestamp)",
  "attackSimDurationTime": "String (duration)",
  "attackSimUserId": "String"
}
```

