---
title: "cloudPcPolicyApplyActionResult resource type"
description: "Specify the policy apply status, apply start time, and finish time. `Frontline shared` only."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPolicyApplyActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specify the policy apply status, apply start time, and finish time. `Frontline shared` only.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/cloudpcprovisioningpolicy-retrievePolicyApplyActionResult.md)|[cloudPcPolicyApplyActionResult](../resources/cloudpcpolicyapplyactionresult.md)|List properties and relationships of the [cloudPcPolicyApplyActionResult](../resources/cloudpcpolicyapplyactionresult.md) objects.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|status|string|The status of the applied operation. Possible values are, `succeeded`, `pending`, and `failed`.|
|startDateTime|DateTime|The date and time when the operation was applied.|
|finishDateTime|DateTime|The date and time when the operation was finished.|

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
