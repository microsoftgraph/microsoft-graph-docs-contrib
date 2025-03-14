---
title: "userCloudCommunication resource type"
description: "Represents information about the interaction from communications and a user."
author: "garchiro7"
ms.date: 03/11/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# userCloudCommunication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about the interaction from communications and a user.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegates](../api/callsettings-list-delegates.md)|[delegationSettings](../resources/delegationsettings.md) collection|Retrieve all delegates for a user.    |
|[List delegators](../api/callsettings-list-delegators.md)|[delegationSettings](../resources/delegationsettings.md) collection|Retrieve all delegators for a user. |

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|callSettings|[callSettings](../resources/callsettings.md)|The call Settings assigned to the user.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userCloudCommunication",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userCloudCommunication"
}
```

