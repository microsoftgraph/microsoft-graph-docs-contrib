---
title: "cloudPcPolicyApplyActionResult resource type"
description: "Specifies the policy apply status, apply start time, and finish time. `Frontline shared` only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 01/07/2025
---

# cloudPcPolicyApplyActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the policy apply status, apply start time, and finish time. `Frontline shared` only.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|status|string|The status of the applied operation. The possible values are: `succeeded`, `pending`,`failed`, and `unknownFutureValue`.|
|startDateTime|DateTime|The date and time when the operation was applied.|
|finishDateTime|DateTime|The date and time when the operation finished.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcPolicyApplyActionResult",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyApplyActionResult",
  "status": "succeeded",
  "startDateTime": "2024-10-10T00:00:00",
  "finishDateTime": "2024-10-11T00:00:00"
}
```
