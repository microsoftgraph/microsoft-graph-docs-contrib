---
title: "cloudPCUserSettingsPersistenceDetail resource type"
description: "Represents if Cloud PC user settings persistence is enabled, Windows 365 will automatically save any user-specific application data in a central cloud storage location and reconnect the user to that storage upon each connection."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceDetail  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents if Cloud PC user settings persistence is enabled, Windows 365 will automatically save any user-specific application data in a central cloud storage location and reconnect the user to that storage upon each connection.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Indicates unique identifier for the Cloud PC user settings persistence configuration for a single policy collection. Required. Read-Only.|
|gracePeriodEndDateTime|DateTimeOffset| Indicates the grace period end time when user settings persistence exceeds the available quota. If the usage of user settings persistence is over the available quota when the grace period expires, the system will automatically delete the profile with the oldest last attached timestamp. For example, grace period date would look like this '2025-01-01T00:00:00Z'. Read-Only.  |

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceDetail",
  "id": "String (identifier)",
  "gracePeriodEndDateTime": "String (timestamp)"
}
```
