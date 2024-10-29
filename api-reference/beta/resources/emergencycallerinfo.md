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

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName | String | Emergency caller display name. |
| location | [location](../resources/location.md) | Emergency caller location. |
| phoneNumber | String | Emergency caller's phone number. |
| tenantId | String | Caller's tenant id. |
| upn | String | Caller's user principal name. |

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

