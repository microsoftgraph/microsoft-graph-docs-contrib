---
title: "cloudPcReport resource type"
description: "Represents the Windows 365 Cloud PC-related reports."
author: "zhuolinglii"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 11/24/2025
---

# cloudPcReport resource type

Namespace: microsoft.graph

Represents the Windows 365 Cloud PC-related reports.

Use a method in the [Methods](#methods) section to get the corresponding report data in the response.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Retrieve Cloud PC recommendation reports](../api/cloudpcreport-retrievecloudpcrecommendationreports.md)|Stream|Retrieve Cloud PC recommendation [reports](../resources/cloudpcreport.md) for usage optimization and cost savings.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only. |

### cloudPcRecommendationReportType values

| Member                        | Description       |
| :---------------------------- | :---------------- |
| cloudPcUsageCategoryReport    | Indicates the report that shows the usage of Cloud PCs along with their associated categories. The possible report columns for these categories are: `Undersized`, `Oversized`, `Rightsized`, or `Underutilized` based on usage.|
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
