---
title: "applicationAnalyticsUsagePoint resource type"
description: "Represents a single data point for application usage analytics, providing daily aggregated counts for cloud and enterprise applications in Global Secure Access."
author: "miritsadon"
ms.date: 08/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# applicationAnalyticsUsagePoint resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single data point for application usage analytics, providing daily aggregated counts for cloud and enterprise applications in Global Secure Access. This information is returned by the [getApplicationUsageAnalytics](../api/networkaccess-reports-getapplicationusageanalytics.md) API.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudAppsCount|Int64|The count attributed to cloud applications for the specified aggregation type.|
|enterpriseAppsCount|Int64|The count attributed to enterprise applications for the specified aggregation type.|
|timeStampDateTime|DateTimeOffset|The date for which the aggregated data point represents.|
|totalCount|Int64|The total count for the specified aggregation type (users, devices, or transactions).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.applicationAnalyticsUsagePoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.applicationAnalyticsUsagePoint",
  "timeStampDateTime": "String (timestamp)",
  "totalCount": "Integer",
  "enterpriseAppsCount": "Integer",
  "cloudAppsCount": "Integer"
}
```
