---
title: "cloudPcReport resource type"
description: "Represents the Windows 365 Cloud PC-related reports."
author: "zhuolinglii"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/11/2025
---

# cloudPcReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports.

Use a method in the [Methods](#methods) section to get the corresponding report data in the response.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Retrieve Cloud PC recommendation reports](../api/cloudpcreport-retrievecloudpcrecommendationreports.md)|Stream|Get the device recommendation reports for Cloud PCs, such as the usage category report.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only. |

### cloudPcRecommendationReportType values

>[!CAUTION]
> The `cloudPcUsageCategoryReports` value is deprecated and will stop being supported on December 31, 2025. Going forward, use `cloudPcUsageCategoryReport`.

| Member                        | Description       |
| :---------------------------- | :---------------- |
| cloudPcUsageCategoryReports   | **Deprecated**. Indicates the report that shows the usage of Cloud PCs along with their associated categories. The possible report columns for these categories are `Undersized`, `Oversized`, `Rightsized`, or `Underutilized` based on usage. This value is deprecated and will be removed on December 31, 2025. Use `cloudPcUsageCategoryReport` with the [cloudPcReport](cloudpcreport.md) resource instead.|
| cloudPcUsageCategoryReport    | Indicates the report that shows the usage of Cloud PCs along with their associated categories. The possible report columns for these categories are `Undersized`, `Oversized`, `Rightsized`, or `Underutilized` based on usage.|
| unknownFutureValue            | Evolvable enumeration sentinel value. Don't use.|


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcReport",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcReport",
  "id": "String (identifier)"
}
```
