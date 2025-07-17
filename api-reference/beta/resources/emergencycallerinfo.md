---
title: "emergencyCallerInfo resource type"
description: "Contains information about an emergency caller."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 12/03/2024
doc_type: resourcePageType
---
# emergencyCallerInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the emergency caller. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName | String | The display name of the emergency caller. |
| location | [location](../resources/location.md) | The location of the emergency caller. |
| phoneNumber | String | The phone number of the emergency caller.  |
| tenantId | String | The tenant ID of the emergency caller. |
| upn | String | The user principal name of the emergency caller. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emergencyCallerInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emergencyCallerInfo",
  "displayName": "String",
  "upn": "String",
  "phoneNumber": "String",
  "tenantId": "String",
  "location": {
    "@odata.type": "microsoft.graph.location"
  }
}
```

