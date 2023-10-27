---
title: "reports resource type"
description: "Represents all the reports components in the Global Secure Access services."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# reports resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all the reports components in the Global Secure Access services.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List reports](../api/networkaccess-networkaccessroot-list-reports.md)|[microsoft.graph.networkaccess.reports](../resources/networkaccess-reports.md) collection|Get a list of the [microsoft.graph.networkaccess.reports](../resources/networkaccess-reports.md) objects and their properties.|
|[Get reports](../api/networkaccess-reports-get.md)|[microsoft.graph.networkaccess.reports](../resources/networkaccess-reports.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.reports](../resources/networkaccess-reports.md) object.|
|[transactionSummaries](../api/networkaccess-reports-transactionsummaries.md)|[microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection|network transactions summary.|
|[entitiesSummaries](../api/networkaccess-reports-entitiessummaries.md)|[microsoft.graph.networkaccess.entitiesSummary](../resources/networkaccess-entitiessummary.md) collection|unique connectivity entities summary.|
|[getCrossTenantSummary](../api/networkaccess-reports-getcrosstenantsummary.md)|[microsoft.graph.networkaccess.crossTenantSummary](../resources/networkaccess-crosstenantsummary.md)|cross-tenant access summary.|
|[getDeviceUsageSummary](../api/networkaccess-reports-getdeviceusagesummary.md)|[microsoft.graph.networkaccess.deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md)|device usage summary.|
|[getDestinationSummaries](../api/networkaccess-reports-getdestinationsummaries.md)|[microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection|destinations summary|


## Properties
|Property|Type|Description|
|:---|:---|:---|

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

