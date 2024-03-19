---
title: "cloudPcRestorePointSetting resource type"
description: "Represents specific settings of point-in-time restore."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcRestorePointSetting resource type

Namespace: microsoft.graph

Represents the settings of a point-in-time restore of a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|frequencyType|[cloudPcRestorePointFrequencyType](../resources/cloudpcrestorepointsetting.md#cloudpcrestorepointfrequencytype-values)|The time interval in hours to take snapshots (restore points) of a Cloud PC automatically. Possible values are: `default`, `fourHours`, `sixHours`, `twelveHours`, `sixteenHours`, `twentyFourHours`, `unknownFutureValue`. The default value is `default` that indicates that the time interval for automatic capturing of restore point snapshots is set to 12 hours.|
|userRestoreEnabled|Boolean|If `true`, the user has the ability to use snapshots to restore Cloud PCs. If `false`, non-admin users can't use snapshots to restore the Cloud PC.|

### cloudPcRestorePointFrequencyType values

| Member             | Description                                                                                                                         |
|:-------------------|:------------------------------------------------------------------------------------------------------------------------------------|
| default            | Default. Indicates that the time interval for automatic capturing of restore point snapshots is set to a default value of 12 hours. |
| fourHours          | Indicates that the time interval for automatic capturing of restore point snapshots is set to 4 hours.                              |
| sixHours           | Indicates that the time interval for automatic capturing of restore point snapshots is set to 6 hours.                              |
| twelveHours        | Indicates that the time interval for automatic capturing of restore point snapshots is set to 12 hours.                             |
| sixteenHours       | Indicates that the time interval for automatic capturing of restore point snapshots is set to 16 hours.                             |
| twentyFourHours    | Indicates that the time interval for automatic capturing of restore point snapshots is set to 24 hours.                             |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                                                                    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRestorePointSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRestorePointSetting",
  "frequencyType": "String",
  "userRestoreEnabled": "Boolean"
}
```
