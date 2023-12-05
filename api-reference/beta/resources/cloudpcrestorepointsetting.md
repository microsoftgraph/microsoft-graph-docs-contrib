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
|frequencyInHours|Int32|The time interval in hours to take snapshots (restore points) of a Cloud PC automatically. Possible values are `4`, `6`, `12`, `16`, and `24`. The default frequency is 12 hours. Starting from January 31, 2024, frequencyInHours property will no longer be supported and will be marked as deprecated. Please use frequencyType instead.|
|:---|:---|:---|
|frequencyType|[cloudPcRestorePointFrequencyType](#cloudPcRestorePointFrequencyType-values)|The time interval in hours for auto taking snapshots (restore points) of the Cloud PC, possible values are: default, fourHours, sixHours, twelveHours, sixteenHours, twentyFourHours. The default value: 'default' which internally translates to Cloud PC default of 'twelveHours'.|
|userRestoreEnabled|Boolean|If `true`, the user has the ability to use snapshots to restore Cloud PCs. If `false`, non-admin users can't use snapshots to restore the Cloud PC.|

## Relationships

None.


### cloudPcRestorePointFrequencyType values


|Member|Description|
|:---|:---|
|default|Default. Indicates the time interval for automatic capturing of restore point snapshots is set to default value 12 hours.|0|
|fourHours|Indicates the time interval for automatic capturing of restore point snapshots is set to 4 hours.|1|
|sixHours|Indicates the time interval for automatic capturing of restore point snapshots is set to 6 hours.|2|
|twelveHours|Indicates the time interval for automatic capturing of restore point snapshots is set to 12 hours.|3|
|sixteenHours|Indicates the time interval for automatic capturing of restore point snapshots is set to 16 hours.|4|
|twentyFourHours|Indicates the time interval for automatic capturing of restore point snapshots is set to 24 hours.|5|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use. |6|


## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRestorePointSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRestorePointSetting",
  "frequencyInHours": "Integer",
  "frequencyType": "#microsoft.graph.cloudPcRestorePointFrequencyType",
  "userRestoreEnabled": "Boolean"
}
```
