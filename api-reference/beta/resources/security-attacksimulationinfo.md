---
title: "attackSimulationInfo resource type"
description: "Represents threat submission attack simulation information"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat submission's attack simulation information. If an email was an attack simulation email, the email threat submission would contain corresponding attack simulation information.

## Properties
| Property              | Type           | Description                          |
|:----------------------|:---------------|:-------------------------------------|
| attackSimDateTime     | DateTimeOffset | Specifies the date time of the attack simulation.   |
| attackSimDurationTime | Duration       | Specifies the duration (in time) for the attack simulation  |
| attackSimId           | Guid           | Specifies the activity id for the attack simulation. |
| attackSimUserId       | String         | Specifies the user id of the user who got the attack simulation email   |

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

