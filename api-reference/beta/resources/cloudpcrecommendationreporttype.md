---
title: "cloudPcRecommendationReportType enum type"
description: "Defines the type of recommendation report for Cloud PCs."
author: "XiaolouT"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: enumPageType
ms.date: 10/10/2025
---

# cloudPcRecommendationReportType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the type of recommendation report for Cloud PCs.

## Members

|Member|Value|Description|
|:---|:---|:---|
|cloudPcUsageCategoryReport|0|The report that shows the usage of Cloud PCs along with their associated categories. The possible categories are `Undersized`, `Oversized`, `Rightsized`, `Underutilized`, or `Unused` based on usage. This value replaces the deprecated `cloudPcUsageCategoryReports` value.|
|cloudPcUsageCategoryReports|1|**Deprecated**. The report that shows the usage of Cloud PCs along with their associated categories. This value is deprecated and will be removed on July 01, 2025. Use `cloudPcUsageCategoryReport` instead.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRecommendationReportType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRecommendationReportType"
}
```
