---
title: "cloudPcAgentPoolBillingConfiguration resource type"
description: "Represents the billing configuration for a Cloud PC agent pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPoolBillingConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the billing configuration for a Cloud PC agent pool.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|billingPlanId|String|The identifier of the billing plan.|
|billingType|[cloudPcAgentPoolBillingType](../resources/enums.md#cloudpcagentpoolbillingtype-values)|The type of billing for the agent pool. The possible values are: `payAsYouGo`, `unknownFutureValue`. The default value is `payAsYouGo`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentPoolBillingConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolBillingConfiguration",
  "billingPlanId": "String",
  "billingType": "String"
}
```
