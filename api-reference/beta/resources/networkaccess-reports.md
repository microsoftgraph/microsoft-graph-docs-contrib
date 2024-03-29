---
title: "reports resource type"
description: "A summary of access activity for a Global Secure Access service."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# reports resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary of access activity for a Global Secure Access service.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[transactionSummaries](../api/networkaccess-reports-transactionsummaries.md)|[microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection|A summary of network transactions.|
|[entitiesSummaries](../api/networkaccess-reports-entitiessummaries.md)|[microsoft.graph.networkaccess.entitiesSummary](../resources/networkaccess-entitiessummary.md) collection|A summary of unique connectivity entities.|
|[getCrossTenantSummary](../api/networkaccess-reports-getcrosstenantsummary.md)|[microsoft.graph.networkaccess.crossTenantSummary](../resources/networkaccess-crosstenantsummary.md)|A summary of cross-tenant access.|
|[getDeviceUsageSummary](../api/networkaccess-reports-getdeviceusagesummary.md)|[microsoft.graph.networkaccess.deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md)|A summary of device usage.|
|[getDestinationSummaries](../api/networkaccess-reports-getdestinationsummaries.md)|[microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection|A summary of destinations.|


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.reports",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.reports"
}
```

