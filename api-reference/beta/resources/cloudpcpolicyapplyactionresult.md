---
title: "cloudPcPolicyApplyActionResult resource type"
description: "For `Frontline shared` only. Specify the policy apply status, apply start time and finish time."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPolicyApplyActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For `Frontline shared` only. Specify the policy apply status, apply start time and finish time.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/cloudpcprovisioningpolicyapplyactionresult-get.md)|[cloudPcPolicyApplyActionResult](../resources/cloudpcpolicyapplyactionresult.md)|List properties and relationships of the [cloudPcPolicyApplyActionResult](../resources/cloudpcpolicyapplyactionresult.md) objects.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|status|[cloudpcpolicyapplyactionstatus](../resources/cloudpcpolicyapplyactionstatus.md)|Indicates if the apply operation status, including succeeded, pending, failed.|
|startDateTime|DateTime|Indicates the creation time of the apply operation.|
|finishDateTime|DateTime|Indicates the finish time of the apply operation.|

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#cloudPcPolicyApplyActionResult",
  "status": "succeeded",
  "startDateTime": "2024-10-10T00:00:00",
  "finishDateTime": "2024-10-11T00:00:00"
}
```
