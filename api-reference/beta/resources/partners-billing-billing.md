---
title: "billing resource type"
description: "Represents billing details for billed and unbilled data."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# billing resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents billing details for billed and unbilled data.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|manifests|[microsoft.graph.partners.billing.manifest](partners-billing-manifest.md) collection|Represents metadata for the exported data.|
|operations|[microsoft.graph.partners.billing.operation](partners-billing-operation.md) collection|Represents an operation to export the billing data of a partner.|
|reconciliation|[microsoft.graph.partners.billing.billedReconciliation](partners-billing-billingreconciliation.md)|Represents details for billed invoice reconciliation data.|
|usage|[microsoft.graph.partners.billing.azureUsage](partners-billing-azureusage.md)|Represents details for billed and unbilled Azure usage data.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.billing",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.billing"
}
```
