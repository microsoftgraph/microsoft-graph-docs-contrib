---
title: "cloudPcPolicyScheduledApplyActionDetail resource type"
description:  "Represents a scheduled apply rule set on the policy. For `Frontline shared` only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPolicyScheduledApplyActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scheduled apply rule set on the policy. For `Frontline shared` only.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|reservePercentage|Int32|The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users. `Frontline shared` only.|
|cronScheduleExpression|String|An expression that specifies the cron schedule. (For example, "0 0 0 20 * *" means schedules a job to run at midnight on the 20th of every month) Administrators can set a cron expression to define the scheduling rules for automatic regular application. When auto-provision is disabled, `cronScheduleExpression` is set to null, stopping the automatic task scheduling. Read-Only.|

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
  "cronScheduleExpression": "0 0 0 20 * *"
}
```
