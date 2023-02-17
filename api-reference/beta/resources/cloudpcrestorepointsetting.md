---
title: "cloudPcRestorePointSetting resource type"
description: "Represents specific settings of point-in-time restore."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcRestorePointSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings of a point-in-time restore of a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|frequencyInHours|Int32|The time interval in hours to take snapshots (restore points) of a Cloud PC automatically. Possible values are `4`, `6`, `12`, `16`, and `24`. The default frequency is 12 hours.|
|userRestoreEnabled|Boolean|If `true`, the user has the ability to use snapshots to restore Cloud PCs. If `false`, non-admin users cannot use snapshots to restore the Cloud PC.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRestorePointSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRestorePointSetting",
  "frequencyInHours": "Integer",
  "userRestoreEnabled": "Boolean"
}
```
