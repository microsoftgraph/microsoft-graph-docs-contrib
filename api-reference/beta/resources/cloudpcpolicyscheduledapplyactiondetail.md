---
title: "cloudPcPolicyScheduledApplyActionDetail resource type"
description:  "Represents a scheduled apply rule set on the policy. For `Frontline shared` only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 05/08/2025
---

# cloudPcPolicyScheduledApplyActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scheduled apply rule set on the policy. For `Frontline shared` only.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|reservePercentage|Int32|The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users. `Frontline shared` only.|
|cronScheduleExpression|String|An expression that specifies the cron schedule. (For example, "0 0 0 20 * *" means schedules a job to run at midnight on the 20th of every month) Administrators can set a cron expression to define the scheduling rules for automatic regular application. When auto provision is disabled, `cronScheduleExpression` is set to null, stopping the automatic task scheduling. Read-Only.|
|nextRunDateTime|String|Indicates IT Admins can see when the next automatic regular apply is executed. It needs to be coordinated with `timezone`, for example, "2025-01-01 00:00:00" with "China Standard Time" means the next task executes at Jan 01 2025 00:00:00 GMT+0800 (China Standard Time). Read-Only.|
|startDateTime|String|Indicates IT Admins can set a start date to define the first scheduler run after this time. If not set, the default is the current time. There is no time zone information at this time, it needs to be coordinated with `timezone`, for example, "2025-01-01 00:00:00" with "China Standard Time" means the scheduling rule takes effect after Jan 01 2025 00:00:00 GMT+0800 (China Standard Time).|
|endDateTime|String|Indicates IT Admins can set an end date to define the last scheduler run before this time. If not set, the scheduler runs continuously. There is no time zone information at this time; it needs to be coordinated with `timezone`, for example, "2025-02-01 00:00:00" with "China Standard Time" means the scheduling rule takes effect before Feb 01 2025 00:00:00 GMT+0800 (China Standard Time).|
|timezone|cloudPcPolicyTimezone|Indicates IT Admins can set a timezone to define the timezone of `nextRunDateTime`, `startDateTime`, `endDateTime`, default is `gmt`. Possible values are `gmt`, `bit`, `nut`, `hst`, `mit`, `akst`, `pst`, `mst`, `east`, `est`, `ast`, `nst`, `art`, `gst`, `azot`, `cet`, `cat`, `eat`, `get`, `pkt`, `ist`, `bst`, `tha`, `cst`, `jst`, `acst`, `pgt`, `sbt`, `fjt`, `tot`, `lint`, and `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcPolicyScheduledApplyActionDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyScheduledApplyActionDetail",
  "reservePercentage": 50,
  "cronScheduleExpression": "0 0 0 20 * *",
  "nextRunDateTime": "2025-03-20 08:00:00",
  "startDateTime": "2025-03-12 00:00:00",
  "endDateTime": null,
  "timezone": "cst"
}
```
