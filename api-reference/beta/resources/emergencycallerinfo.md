---
title: "emergencyCallerInfo resource type"
description: "Contains information about an emergency caller."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---
# emergencyCallerInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the emergency caller. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName | String | The emergency caller display name. |
| location | [location](../resources/location.md) | The emergency caller location. |
| phoneNumber | String | The emergency caller's phone number. |
| tenantId | String | The emergency caller's tenant id. |
| upn | String | The emergency caller's user principal name. |

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

