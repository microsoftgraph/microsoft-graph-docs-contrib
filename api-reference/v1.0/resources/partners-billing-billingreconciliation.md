---
title: "billingReconciliation resource type"
description: "Represents details for billed invoice reconciliation and unbilled invoice reconciliation data."
author: "tingh-msft"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 06/11/2025
---

# billingReconciliation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents details for billed invoice reconciliation and unbilled invoice reconciliation data.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|billed|[microsoft.graph.partners.billing.billedReconciliation](partners-billing-billedreconciliation.md)|Represents details for billed invoice reconciliation data.|
|unbilled|[microsoft.graph.partners.billing.unbilledReconciliation](../resources/partners-billing-unbilledreconciliation.md)|Represents details for unbilled invoice reconciliation data.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.billingReconciliation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.billingReconciliation"
}
```
