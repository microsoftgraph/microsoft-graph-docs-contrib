---
title: "reports resource type"
description: "Represents all the reports components in the Global Secure Access services."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# reports resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all the reports components in the Global Secure Access services. For more information, see [Global Secure Access network traffic dashboard](/azure/global-secure-access/concept-traffic-dashboard).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[entitiesSummaries](../api/networkaccess-reports-entitiessummaries.md)|[microsoft.graph.networkaccess.entitiesSummary](../resources/networkaccess-entitiessummary.md) collection|A summary for Global Secure Access entities.|
|[getCrossTenantSummary](../api/networkaccess-reports-getcrosstenantsummary.md)|[microsoft.graph.networkaccess.crossTenantSummary](../resources/networkaccess-crosstenantsummary.md)|A summary for cross-tenant access counts for Microsoft 365 traffic.|
|[getDestinationSummaries](../api/networkaccess-reports-getdestinationsummaries.md)|[microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection|A summary for most accessed destinations.|
|[getDeviceUsageSummary](../api/networkaccess-reports-getdeviceusagesummary.md)|[microsoft.graph.networkaccess.deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md)|A summary for total, active and inactive devices in a given time range.|
|[transactionSummaries](../api/networkaccess-reports-transactionsummaries.md)|[microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection|A summary for network transcations traffic.|

## Properties

None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

