---
title: "attackSimulationInfo resource type"
description: "threat submission attack simulation info"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

If one email is attack simulation email, the email threat submission will contain attack simulation information.

## Properties
| Property              | Type           | Description                          |
|:----------------------|:---------------|:-------------------------------------|
| attackSimId           | Guid           | The attack simulation activity id.   |
| attackSimDateTime     | DateTimeOffset | The attack simulation date time.     |
| attackSimDurationTime | Duration       | The attack simulation duration time. |
| attackSimUserId       | String         | The attack simulation user id.       |

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

