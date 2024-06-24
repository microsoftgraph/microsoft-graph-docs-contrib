---
title: "azureUsage resource type"
description: "Represents details for billed and unbilled Azure usage data."
author: "sourishdeb"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# azureUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents details for billed and unbilled Azure usage data.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|billed|[microsoft.graph.partners.billing.billedUsage](partners-billing-billedusage.md)|Represents details for billed Azure usage data.|
|unbilled|[microsoft.graph.partners.billing.unbilledUsage](partners-billing-unbilledusage.md)|Represents details for unbilled Azure usage data.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.azureUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.azureUsage"
}
```
