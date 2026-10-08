---
title: "billedAggregatedUsage resource type"
description: "Represents billed aggregated Azure usage data for a partner."
author: "tingh-msft"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 09/02/2026
---

# billedAggregatedUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents billed aggregated Azure usage data for a partner.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Export](../api/partners-billing-billedaggregatedusage-export.md)|[microsoft.graph.partners.billing.operation](partners-billing-operation.md)|Export billed aggregated Azure usage data for a specific invoice.|

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.billedAggregatedUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.billedAggregatedUsage"
}
```
