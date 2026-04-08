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

A summary of access activity for a Global Secure Access service. For more information, see [What is application usage analytics](/entra/global-secure-access/overview-application-usage-analytics).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get application usage analytics](../api/networkaccess-reports-getapplicationusageanalytics.md)|[microsoft.graph.networkaccess.applicationAnalyticsUsagePoint](../resources/networkaccess-applicationanalyticsusagepoint.md) collection|Get a collection of application usage analytics data points based on aggregated traffic logs for a specified time period.|
|[Get cloud application reports](../api/networkaccess-reports-getcloudapplicationreport.md)|[microsoft.graph.networkaccess.cloudApplicationReport](../resources/networkaccess-cloudapplicationreport.md) collection|Get a collection of cloud application reports based on aggregated traffic logs for a specified time period.|
|[Get connection summaries](../api/networkaccess-reports-getconnectionsummaries.md)|[microsoft.graph.networkaccess.getConnectionSummary](../resources/networkaccess-connectionsummary.md) collection|Get a collection of connections counts per traffic type, whether Private, Internet, or Microsoft..|
|[Get cross-tenant access report](../api/networkaccess-reports-crosstenantaccessreport.md)|[microsoft.graph.networkaccess.crossTenantAccess](../resources/networkaccess-crosstenantaccess.md)|A report of access from external IDs to the tenant through Microsoft Entra External ID..|
|[Get cross-tenant access summary](../api/networkaccess-reports-getcrosstenantsummary.md)|[microsoft.graph.networkaccess.crossTenantSummary](../resources/networkaccess-crosstenantsummary.md)|A summary of cross-tenant access.|
|[Get destination report](../api/networkaccess-reports-destinationreport.md)|[microsoft.graph.networkaccess.destination](../resources/networkaccess-destination.md) collection|A report about all outgoing network connections within a specified time frame.|
|[Get destination summary](../api/networkaccess-reports-getdestinationsummaries.md)|[microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection|A summary of destinations.|
|[Get device usage report](../api/networkaccess-reports-devicereport.md)|[microsoft.graph.networkaccess.device](../resources/networkaccess-device.md)|A detailed report of device network traffic.|
|[Get device usage summary](../api/networkaccess-reports-getdeviceusagesummary.md)|[microsoft.graph.networkaccess.deviceUsageSummary](../resources/networkaccess-deviceusagesummary.md)|A summary of device usage.|
|[Get discovered application segment report](../api/networkaccess-reports-getdiscoveredapplicationsegmentreport.md)|[microsoft.graph.networkaccess.discoveredApplicationSegmentReport](../resources/networkaccess-discoveredapplicationsegmentreport.md) collection|Returns a collection of application segments detected in network traffic. |
|[Get enterprise application report](../api/networkaccess-reports-getenterpriseapplicationreport.md)|[microsoft.graph.networkaccess.enterpriseApplicationReport](../resources/networkaccess-enterpriseapplicationreport.md) collection|Get a collection of enterprise application reports based on aggregated traffic logs for a specified time period in Global Secure Access.|
|[Get entities summary](../api/networkaccess-reports-entitiessummaries.md)|[microsoft.graph.networkaccess.entitiesSummary](../resources/networkaccess-entitiessummary.md) collection|A summary of unique connectivity entities.|
|[Get transaction summaries](../api/networkaccess-reports-transactionsummaries.md)|[microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection|A summary of network transactions.|
|[Get usage profiling](../api/networkaccess-reports-usageprofiling.md)|[microsoft.graph.networkaccess.usageProfilingPoint](../resources/networkaccess-usageprofilingpoint.md) collection|Returns an object containing count tables for the traffic types in Global Secure Access, aggregated by the time period specified.|
|[Get user usage report](../api/networkaccess-reports-userreport.md)|[microsoft.graph.networkaccess.user](../resources/networkaccess-user.md) collection|A report of all users who had network traffic during a specified time period.|
|[Get web category report](../api/networkaccess-reports-webcategoryreport.md)|[microsoft.graph.networkaccess.webCategoriesSummary](../resources/networkaccess-webcategoriessummary.md) collection|Get the number of users, devices, and transactions for destination URLs, grouped by web category.|

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

