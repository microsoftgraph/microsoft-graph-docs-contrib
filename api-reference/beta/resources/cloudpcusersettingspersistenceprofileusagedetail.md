---
title: "cloudPCUserSettingsPersistenceProfileUsageDetail resource type"
description: "Describes the usage detail of the cloud profile for specific Cloud PC user settings persistence, including the current used size and the last sync time."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPCUserSettingsPersistenceProfileUsageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the usage detail of the cloud profile for specific Cloud PC user settings persistence, including the current used size and the last sync time.

Used by the **usageDetail** property of a [cloudPCUserSettingsPersistenceProfile](../resources/cloudpcusersettingspersistenceprofile.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|lastUsedSizeSyncDateTime|DateTimeOffset|The last time the user settings persistence profile size was synchronized. For example, midnight UTC on Jan 1, 2025 looks like this: `2025-01-01T00:00:00Z`. Read-Only.|
|profileUsedSizeInGB|Double|Indicates the size in gigabytes of the cloud profile for a specific user. For example, 10 GB used size returns `10` as a response. Read-Only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceProfileUsageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceProfileUsageDetail",
  "profileUsedSizeInGB": "Double",
  "lastUsedSizeSyncDateTime": "String (timestamp)"
}
```
