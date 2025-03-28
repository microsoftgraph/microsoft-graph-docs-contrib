---
title: "reports resource type"
description: "A summary of access activity for a Global Secure Access service."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
toc.title: Traffic reports
ms.date: 08/01/2024
---

# reports resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary of access activity for a Global Secure Access service.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get transaction summaries](../api/networkaccess-reports-transactionsummaries.md)|[microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection|A summary of network transactions.|
|[Get entities summary](../api/networkaccess-reports-entitiessummaries.md)|[microsoft.graph.networkaccess.entitiesSummary](../resources/networkaccess-entitiessummary.md) collection|A summary of unique connectivity entities.|
|[Get cross-tenant access summary](../api/networkaccess-reports-getcrosstenantsummary.md)|[microsoft.graph.networkaccess.crossTenantSummary](../resources/networkaccess-crosstenantsummary.md)|A summary of cross-tenant access.|
|[Get cross-tenant access report](../api/networkaccess-reports-crosstenantaccessreport.md)|[microsoft.graph.networkaccess.crossTenantAccess](../resources/networkaccess-crosstenantaccess.md)|A report of access from external IDs to the tenant through Microsoft Entra External ID..|
|[Get device usage summary](../api/networkaccess-reports-getdeviceusagesummary.md)|[microsoft.graph.networkaccess.deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md)|A summary of device usage.|
|[Get device usage report](../api/networkaccess-reports-devicereport.md)|[microsoft.graph.networkaccess.device](../resources/networkaccess-device.md)|A detailed report of device network traffic.|
|[Get destination summary](../api/networkaccess-reports-getdestinationsummaries.md)|[microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection|A summary of destinations.|
|[Get destination report](../api/networkaccess-reports-destinationreport.md)|[microsoft.graph.networkaccess.destination](../resources/networkaccess-destination.md) collection|A report about all outgoing network connections within a specified time frame.|
|[Get user usage report](../api/networkaccess-reports-userreport.md)|[microsoft.graph.networkaccess.user](../resources/networkaccess-user.md) collection| A report of all users who had network traffic during a specified time period.|

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

