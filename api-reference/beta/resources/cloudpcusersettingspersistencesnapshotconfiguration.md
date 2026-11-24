---
title: "cloudPcUserSettingsPersistenceSnapshotConfiguration resource type"
description: "Represents the frequency settings for automatic snapshots of user settings persistence profiles."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserSettingsPersistenceSnapshotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the frequency settings for automatic snapshots of user settings persistence profiles. Automatic snapshots are enabled by default whenever user settings persistence is enabled. The `snapshotConfiguration` default remains `null` for backward compatibility and does not disable automatic snapshots. This type doesn't expose an independent enable or disable setting.

Used by the **snapshotConfiguration** property of a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autoSnapshotFrequencyInDays|Int32|Indicates how often automatic snapshots are taken, in days. Allowed range is `7` to `30`. Default value is `30`. Nullable.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcUserSettingsPersistenceSnapshotConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserSettingsPersistenceSnapshotConfiguration",
  "autoSnapshotFrequencyInDays": "Int32"
}
```
