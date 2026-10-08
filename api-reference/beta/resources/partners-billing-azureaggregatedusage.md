---
title: "azureAggregatedUsage resource type"
description: "Represents aggregated Azure usage data for partner billing."
author: "tingh-msft"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 09/02/2026
---

# azureAggregatedUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents aggregated Azure usage data for partner billing.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|billed|[microsoft.graph.partners.billing.billedAggregatedUsage](partners-billing-billedaggregatedusage.md)|The billed aggregated usage data that can be exported.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.azureAggregatedUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.azureAggregatedUsage"
}
```
