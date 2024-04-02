---
title: "unbilledUsage resource type"
description: "Represents details for unbilled Azure usage data."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# unbilledUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents details for unbilled Azure usage data.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[export](../api/partners-billing-unbilledusage-export.md)|[microsoft.graph.partners.billing.operation](partners-billing-operation.md)|Export unbilled Azure usage data for a specific billing period and currency.|

## Properties

None.

### billingPeriod values

| Member             | Description                                              |
|:-------------------|:---------------------------------------------------------|
| current            | The current month or billing period that is in progress. |
| last               | The last month or billing period.                        |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.         |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.unbilledUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.unbilledUsage"
}
```
