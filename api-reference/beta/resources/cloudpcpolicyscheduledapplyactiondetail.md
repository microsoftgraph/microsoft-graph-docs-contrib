---
title: "CloudPcPolicyScheduledApplyActionDetail resource type"
description: "For `Frontline shared` only. Specific scheduled apply rule set on the policy."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPolicyScheduledApplyActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For `Frontline shared` only. Specific scheduled apply rule set on the policy.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcprovisioningpolicyschedule-get.md)|[cloudPcPolicyScheduledApplyActionDetail](../resources/cloudPcPolicyScheduledApplyActionDetail.md)|List properties and relationships of the [cloudPcPolicyScheduledApplyActionDetail](../resources/cloudPcPolicyScheduledApplyActionDetail.md) objects.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|reservePercentage|Int32|For `Frontline shared` only. The percentage of Cloud PCs to keep available. Administrators can set this property to a value from 0 to 99. Cloud PCs are reprovisioned only when there are no active and connected Cloud PC users.|
|cronScheduleExpression|String|Administrators can set a cron expression to define the scheduling rules for automatic regular apply. When auto provision is disabled, `cronScheduleExpression` will be set to null, stopping the automatic task scheduling (ex. "0 0 0 20 * *" means schedules a job to run at midnight on the 20th of every month). Read-Only.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyScheduledApplyActionDetail",
  "reservePercentage": 50,
  "cronScheduleExpression": "0 0 0 20 * *"
}
```
