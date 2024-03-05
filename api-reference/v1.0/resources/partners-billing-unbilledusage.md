---
title: "unbilledUsage resource type"
description: "Represents details for unbilled Azure usage data."
author: "sourishdeb"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# unbilledUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents details for unbilled Azure usage data.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[export](../api/partners-billing-unbilledusage-export.md)|[microsoft.graph.partners.billing.operation](partners-billing-operation.md)|Export the unbilled Azure usage data for a specific billing period and a given currency.|

## Properties

None.

### billingPeriod values

| Member             | Description                                      |
|:-------------------|:-------------------------------------------------|
| current            | The current billing period.                      |
| last               | The billing period for the last month.           |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
