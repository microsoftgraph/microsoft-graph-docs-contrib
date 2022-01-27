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

Represents specific settings of point-in-time restore.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|frequencyInHours|Int32|The time interval in hours to take snapshots automatically (restore points) of a Cloud PC. Possible values are 4, 6, 12, 16, and 24. The default frequency is 12 hours.|
|userRestoreEnabled|Boolean|If true, the user will have the privilege to use snapshots to restore Cloud PCs. If false, snapshots can't be used by the non-admin user.|

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
